#include "asm.h"

int ireg[INTREG_NUM];	// int register
float freg[INTREG_NUM];	// float register
int ram[DATA_RAM_SIZE/4];	// data teritory	(word幅のみでアクセス)

int fpcond;		// float condition register的な何か
int pc;		// program counter

ULLI inst_num = 0;
int min_sp = DATA_RAM_SIZE;

bool halt = false;
bool print = false;

vector<int> pcStatistics;
ULLI instStatistics[INSTNUM];

string assemName[INSTNUM] = { "HALT","AND","ADDU","SUBU","SLT","LW","SW","BEQ","BNE"
			    ,"ADDI","ORI","SLL","SRA","LUI","JR","INPUT","OUTPUT"
			    ,"J","JAL","ADDS","SUBS","MULS","DIVS","FMOVE","FNEG"
			    ,"CEQS","CLES","LFL","LFH","LWCL","SWCL","BCLT"
			    ,"BCLF","SQRT" 
			      ,"SLTI","SGTI","BNEI", "LWR", "SWR", "LWCLR", "SWCLR", "FABS"};

extern bool cont;
extern FILE* inputFile;
extern vector<inst> insts;
extern map<int,string> addrToLabel;
extern map<string, int> labelNames;

clock_t start;
clock_t now;

int simulator(){
  for(int i=0; i < DATA_RAM_SIZE/4; i++){	// ram初期化
    ram[i] = 0;
  }
  ireg[0] = 0;	// zero register
  ireg[29] = DATA_RAM_SIZE;
  pc = 0;
  for(int i=0; i < (int)insts.size(); i++){
    pcStatistics.push_back(0);
  }

  start = clock();

  if(cont){	// -c のオプションの時
    while(!halt){
      execInst();
    }
    now = clock();
    cerr << (double)(now - start) / CLOCKS_PER_SEC << endl;
  }
  else{
    cerr << "debug mode" << endl;
    string command;
    while(cerr << ">> ", getline(cin,command)){
      if(command == "step"){	// numだけ一気に命令実行
	ULLI num; cin >> num;
	getline(cin, command);	// 改行読み飛ばし
	print = false;
	stepx(num);
	showRegs();
      }
      else if(command == "breaki"){
	int num; cin >> num;
	getline(cin, command);	// 改行読み飛ばし

	print = false;
	while(pc != num){
	  execInst();
	}
	showRegs();
	cerr <<"instNum: "<< inst_num << endl;
      }
      else if(command == "breakf"){
	string func; cin >> func;
	getline(cin, command);	// 改行読み飛ばし

	print = false;
	int funcPc = labelNames[func];
	while(pc != funcPc){
	  execInst();
	}
	showRegs();
	cerr <<"instNum: "<< inst_num << endl;
      }
      else if(command == "cont"){
	print = false;
	while(1){
	  if(halt) break;
	  execInst();
	}
      }
      else if(command == "showPcStat"){
	showPcStat();
      }
      else if(command == "showInstStat"){
	showInstStat();
      }
      else{
	print = true;
	execInst();
	showRegs();
      }

      if(halt){
	cerr << "! program halt !" << endl;
	break;
      }
    }
  }
  // showRegs();
  // cerr <<"r29(stack-min): "<< min_sp <<", r30(heap): "<< ireg[30] << endl;

  showPcStat();
  showInstStat();
  return 0;
}

void showPcStat(void){
  ofstream ofs("pcstat.txt");

  ofs << "<< pcStatistics >>" << endl;
  for(int i=0; i < (int)pcStatistics.size(); i++){
    if(addrToLabel.find(i) != addrToLabel.end())
      ofs <<", (label): "<< addrToLabel.find(i)->second << endl;
    ofs << "pc " << i << " : " << pcStatistics[i] << endl;
  }
  ofs << endl;
}

void showInstStat(void){
  ofstream ofs("inststat.txt");

  ofs << "<< instStatistics >>" << endl;
  char line[1024];
  for(int i=0; i < INSTNUM; i++){
    sprintf(line, "%6s: %10llu\n", assemName[i].c_str(), instStatistics[i]);
    ofs << line;
  }
  ofs <<"   ALL: "<< inst_num << endl;
}

void showRegs(void){
  cerr << "monitering register" << endl;
  for(int i=0; i < 32; i++){
    cerr << "reg[" << i << "]: " << ireg[i] << ", ";
  }
  cerr << endl;
  for(int i=0; i < 32; i++){
    cerr << "freg[" << i << "]: " << freg[i] << ", ";
  }
  cerr << endl;
}

int stepx(ULLI num){
  for(ULLI i=0; i<num; i++){
    if(halt){
      return 0;
    }
    execInst();
  }
  return 0;
}

void execInst(void){

  // if(ireg[29] <= min_sp) min_sp = ireg[29];  
  if(inst_num % 100000000 == 0){
    // cerr << "inst_num: " << inst_num << ", heap: " << ireg[30] << endl;
    now = clock();
    cerr << (double)(now - start) / CLOCKS_PER_SEC << endl << endl;
  }

  // if(print){
  //   if(addrToLabel.find(pc) != addrToLabel.end())
  //     cerr << "pc: " << pc << ", label: " << addrToLabel.find(pc)->second << endl;
  //   else 
  //     cerr << "pc: " << pc << endl;
  //   cerr << nowi.line;
  //   cerr <<"name:"<< nowi.name <<", rs:"<< nowi.rs;
  //   cerr <<", rt:"<< insts[nowpc].rt <<",rd:"<< insts[nowpc].rd;
  //   cerr <<", sham:"<< insts[nowpc].sh <<", imme:"<< insts[nowpc].im <<", im2:"<< insts[nowpc].im2<< endl;
  // }
  pcStatistics[pc] = pcStatistics[pc] + 1;
  inst_num ++;
  int nowpc = pc;
  pc ++;

  if(insts[nowpc].op == 0x23){//insts[nowpc].name == "lw"
    instStatistics[LW] ++;
    int addr = ireg[insts[nowpc].rs] + insts[nowpc].im;
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      ireg[insts[nowpc].rt] = ram[addr/4];
    }
    else{
      cerr << "ERROR: touching memory out of bounds, pc: " << pc << endl;
      cerr << insts[nowpc].line << endl;
      cerr << "inst_num: " << inst_num << endl;
      cerr << ", addr: " << addr << endl;
    }
  }
  else if(insts[nowpc].op == 0x31){//insts[nowpc].name == "lwcl"
    instStatistics[LWCL] ++;
    int addr = ireg[insts[nowpc].rs] + insts[nowpc].im;
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      conv c1;
      c1.i = ram[addr/4];
      freg[insts[nowpc].rt] = c1.f;
    }else{
      cerr << "ERROR: touching memory out of bounds, pc: " << pc;
      cerr << ", addr: " << addr << endl;
      cerr << insts[nowpc].line << endl;
      showRegs();
    }
  }
  else if(insts[nowpc].op == 0x8){//insts[nowpc].name == "addi"
    instStatistics[ADDI] ++;
    ireg[insts[nowpc].rt] = ireg[insts[nowpc].rs] + insts[nowpc].im;
  }
  else if(insts[nowpc].op == 0x07){//insts[nowpc].name == "bnei"
    instStatistics[BNEI] ++;
    if(ireg[insts[nowpc].rt] != insts[nowpc].im2) pc += insts[nowpc].im;
  }
  else if(insts[nowpc].op == 0x11 && insts[nowpc].fmt == 0x10 && insts[nowpc].fu == 0x2){//insts[nowpc].name == "mul.s"
    instStatistics[MULS] ++;
    freg[insts[nowpc].rd] = freg[insts[nowpc].rs] * freg[insts[nowpc].rt];
  }
  else if(insts[nowpc].op == 0x00 && insts[nowpc].fu == 0x00){	//insts[nowpc].name == "sll"
    instStatistics[SLL] ++;
    ireg[insts[nowpc].rd] = ireg[insts[nowpc].rs] << insts[nowpc].sh;
  }
  else if(insts[nowpc].op == 0x2b){	//insts[nowpc].name == "sw"
    instStatistics[SW] ++;
    int addr = ireg[insts[nowpc].rs] + insts[nowpc].im;
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      ram[addr/4] = ireg[insts[nowpc].rt];
    }
    else{
      cerr << "ERROR: touching memory out of bounds, pc: " << pc << endl;
      cerr << insts[nowpc].line << endl;
      cerr << "inst_num: " << inst_num << endl;
      cerr << ", addr: " << addr << endl;
    }
  }
  else if(insts[nowpc].op == 0x11 && insts[nowpc].fmt == 0x8 && insts[nowpc].rt == 0x0){//insts[nowpc].name == "bclf"
    instStatistics[BCLF] ++;
    if(fpcond == 0)
      pc += insts[nowpc].im;
  }
  else if(insts[nowpc].op == 0x02){	//insts[nowpc].name == "j"
    instStatistics[J] ++;
    pc = insts[nowpc].im;
  }
  else if(insts[nowpc].op == 0x11 && insts[nowpc].fmt == 0x10 && insts[nowpc].fu == 0x0){//insts[nowpc].name == "add.s"
    instStatistics[ADDS] ++;
    freg[insts[nowpc].rd] = freg[insts[nowpc].rs] + freg[insts[nowpc].rt];
  }
  else if(insts[nowpc].op == 0x11 && insts[nowpc].fmt == 0x10 && insts[nowpc].fu == 0x1){//insts[nowpc].name == "sub.s"
    instStatistics[SUBS] ++;
    freg[insts[nowpc].rd] = freg[insts[nowpc].rs] - freg[insts[nowpc].rt];
  }
  else if(insts[nowpc].op == 0x24){//insts[nowpc].name == "lwr"
    instStatistics[LWR] ++;
    int addr = ireg[insts[nowpc].rt] + ireg[insts[nowpc].rs];
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      ireg[insts[nowpc].rd] = ram[addr/4];
    }
    else{
      cerr << "ERROR: touching memory out of bounds, pc: " << pc << endl;
      cerr << insts[nowpc].line << endl;
      cerr << "inst_num: " << inst_num << endl;
      cerr << ", addr: " << addr << endl;
    }
  }
  else if(insts[nowpc].op == 0x11 && insts[nowpc].fmt == 0x10 && insts[nowpc].fu == 0x3e){//insts[nowpc].name== "c.le.s"
    instStatistics[CLES] ++;
    if(freg[insts[nowpc].rs] <= freg[insts[nowpc].rt])
      fpcond = 1;
    else
      fpcond = 0;
  }
  else if(insts[nowpc].op == 0x39){//insts[nowpc].name == "swcl"
    instStatistics[SWCL] ++;
    int addr = ireg[insts[nowpc].rs] + insts[nowpc].im;
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      conv c1;
      c1.f = freg[insts[nowpc].rt];
      ram[addr/4] = c1.i;
    }else{
      cerr << "ERROR: touching memory out of bounds, pc: " << pc;
      cerr << ", addr: " << addr << endl;
      cerr << insts[nowpc].line << endl;
      showRegs();
    }
  }
  else if(insts[nowpc].op == 0x11 && insts[nowpc].fmt == 0x10 && insts[nowpc].fu == 0x7){//insts[nowpc].name == "fabs"
    instStatistics[FABS] ++;
    freg[insts[nowpc].rd] = fabs(freg[insts[nowpc].rs]);
  }
  else if(insts[nowpc].op == 0x00 && insts[nowpc].fu == 0x08){//insts[nowpc].name == "jr"
    instStatistics[JR] ++;
    pc = ireg[insts[nowpc].rs] / 4;
  }
  else if(insts[nowpc].op == 0x03){	//insts[nowpc].name == "jal"
    instStatistics[JAL] ++;
    ireg[31] = pc * 4;
    pc = insts[nowpc].im;
  }  
  else if(insts[nowpc].op == 0x11 && insts[nowpc].fmt == 0x10 && insts[nowpc].fu == 0x32){//insts[nowpc].name== "c.eq.s"
    instStatistics[CEQS] ++;
    if(freg[insts[nowpc].rs] == freg[insts[nowpc].rt])
      fpcond = 1;
    else
      fpcond = 0;
  }
  else if(insts[nowpc].op == 0x32){//insts[nowpc].name == "lfh"
    instStatistics[LFH] ++;
    conv c1;
    c1.i = (insts[nowpc].im << 16);	// 下位はゼロ詰め
    freg[insts[nowpc].rt] = c1.f;
  }
  else if(insts[nowpc].op == 0x11 && insts[nowpc].fmt == 0x10 && insts[nowpc].fu == 0x4){//insts[nowpc].name == "fmove"
    instStatistics[FMOVE] ++;
    freg[insts[nowpc].rd] = freg[insts[nowpc].rs];
  }
  else if(insts[nowpc].op == 0x05){//insts[nowpc].name == "bne"
    instStatistics[BNE] ++;
    if(ireg[insts[nowpc].rt] != ireg[insts[nowpc].rs]) pc += insts[nowpc].im;
  }
  else if(insts[nowpc].op == 0x30){//insts[nowpc].name == "lfl"){	// 上位16bitは保存する
    instStatistics[LFL] ++;
    conv c1, c2;
    c1.f = freg[insts[nowpc].rt];
    c2.i = (c1.i & 0xffff0000) | (insts[nowpc].im & 0xffff);
    freg[insts[nowpc].rt] = c2.f;
  }
  else if(insts[nowpc].op == 0x11 && insts[nowpc].fmt == 0x10 && insts[nowpc].fu == 0x5){//insts[nowpc].name == "fneg"
    instStatistics[FNEG] ++;
    freg[insts[nowpc].rd] = - freg[insts[nowpc].rs];
  }
  else if(insts[nowpc].op == 0x11 && insts[nowpc].fmt == 0x10 && insts[nowpc].fu == 0x6){
    instStatistics[SQRT] ++;
    freg[insts[nowpc].rd] = sqrt(freg[insts[nowpc].rs]);
  }
  else if(insts[nowpc].op == 0x0 && insts[nowpc].fu == 0x2b){//insts[nowpc].name == "slti"
    instStatistics[SLTI] ++;
    if(ireg[insts[nowpc].rs] < insts[nowpc].im) ireg[insts[nowpc].rt] = 1;
    else ireg[insts[nowpc].rt] = 0;
  }
  else if(insts[nowpc].op == 0x11 && insts[nowpc].fmt == 0x10 && insts[nowpc].fu == 0x3){//insts[nowpc].name == "div.s"
    instStatistics[DIVS] ++;
    freg[insts[nowpc].rd] = freg[insts[nowpc].rs] / freg[insts[nowpc].rt];
  }
  else if(insts[nowpc].op == 0x0 && insts[nowpc].fu == 0x2c){//insts[nowpc].name == "sgti"
    instStatistics[SGEI] ++;
    if(ireg[insts[nowpc].rs] > insts[nowpc].im) ireg[insts[nowpc].rt] = 1;
    else ireg[insts[nowpc].rt] = 0;
  }
  else if(insts[nowpc].op == 0x0 && insts[nowpc].fu == 0x2a){//insts[nowpc].name == "slt"
    instStatistics[SLT] ++;
    if(ireg[insts[nowpc].rs] < ireg[insts[nowpc].rt]) ireg[insts[nowpc].rd] = 1;
    else ireg[insts[nowpc].rd] = 0;
  }
  else if(insts[nowpc].op == 0x21){//insts[nowpc].name == "lwclr"
    instStatistics[LWCLR] ++;
    int addr = ireg[insts[nowpc].rt] + ireg[insts[nowpc].rs];
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      conv c1;
      c1.i = ram[addr/4];
      freg[insts[nowpc].rd] = c1.f;
    }else{
      cerr << "ERROR: touching memory out of bounds, pc: " << pc;
      cerr << ", addr: " << addr << endl;
      cerr << insts[nowpc].line << endl;
      showRegs();
    }
  }
  else if(insts[nowpc].op == 0x0d){//insts[nowpc].name == "ori"
    instStatistics[ORI] ++;
    ireg[insts[nowpc].rt] = ireg[insts[nowpc].rs] | insts[nowpc].im;
  }
  else if(insts[nowpc].op == 0x0f){	//insts[nowpc].name == "lui"
    instStatistics[LUI] ++;
    ireg[insts[nowpc].rt] = (insts[nowpc].im * 0x10000) & 0xFFFF0000;
  }
  else if(insts[nowpc].op == 0x0 && insts[nowpc].fu == 0x23){	//insts[nowpc].name == "subu"
    instStatistics[SUBU] ++;
    ireg[insts[nowpc].rd] = ireg[insts[nowpc].rs] - ireg[insts[nowpc].rt];
  }
  else if(insts[nowpc].op == 0x2c){	//insts[nowpc].name == "swr"
    instStatistics[SWR] ++;
    int addr = ireg[insts[nowpc].rt] + ireg[insts[nowpc].rs];
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      ram[addr/4] = ireg[insts[nowpc].rd];
    }
    else{
      cerr << "ERROR: touching memory out of bounds, pc: " << pc << endl;
      cerr << insts[nowpc].line << endl;
      cerr << "inst_num: " << inst_num << endl;
      cerr << ", addr: " << addr << endl;
    }
  }
  else if(insts[nowpc].op == 0x18 && insts[nowpc].fu == 0x01){//insts[nowpc].name == "output"
    instStatistics[OUTPUT] ++;
    cout << (char)(ireg[insts[nowpc].rs] & 0x000000FF);
  }
  else if(insts[nowpc].op == 0x0 && insts[nowpc].fu == 0x21){	//insts[nowpc].name == "addu"
    instStatistics[ADDU] ++;
    ireg[insts[nowpc].rd] = ireg[insts[nowpc].rs] + ireg[insts[nowpc].rt];
  }
  else if(insts[nowpc].op == 0x00 && insts[nowpc].fu == 0x03){	//insts[nowpc].name == "sra"
    instStatistics[SRA] ++;
    ireg[insts[nowpc].rd] = ireg[insts[nowpc].rs] >> insts[nowpc].sh;
  }
  else if(insts[nowpc].op == 0x18 && insts[nowpc].fu == 0x00){//insts[nowpc].name == "input"
    instStatistics[INPUT] ++;
    char c;
    if(inputFile != NULL)
      c = getc(inputFile);
    else
      c = getchar();
    ireg[insts[nowpc].rs] = (int)c;
  }

  else if(insts[nowpc].op == 0x4 && insts[nowpc].rs == 0 && insts[nowpc].rt == 0 && insts[nowpc].im==-1){//insts[nowpc].name == "halt"
    instStatistics[HALT] ++;
    halt = true;
  }

  // 0 発行
  else if(insts[nowpc].op == 0x0 && insts[nowpc].fu == 0x24){	//insts[nowpc].name == "and"
    instStatistics[AND] ++;
    ireg[insts[nowpc].rd] = ireg[insts[nowpc].rs] & ireg[insts[nowpc].rt];
  }
  else if(insts[nowpc].op == 0x04){//insts[nowpc].name == "beq"
    instStatistics[BEQ] ++;
    if(ireg[insts[nowpc].rt] == ireg[insts[nowpc].rs]) pc += insts[nowpc].im;
  }
  else if(insts[nowpc].op == 0x29){//insts[nowpc].name == "swclr"
    instStatistics[SWCLR] ++;
    int addr = ireg[insts[nowpc].rt] + ireg[insts[nowpc].rs];
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      conv c1;
      c1.f = freg[insts[nowpc].rd];
      ram[addr/4] = c1.i;
    }else{
      cerr << "ERROR: touching memory out of bounds, pc: " << pc;
      cerr << ", addr: " << addr << endl;
      cerr << insts[nowpc].line << endl;
      showRegs();
    }
  }
  else if(insts[nowpc].op == 0x11 && insts[nowpc].fmt == 0x8 && insts[nowpc].rt == 0x1){//insts[nowpc].name == "bclt"
    instStatistics[BCLT] ++;
    if(fpcond == 1)
      pc += insts[nowpc].im;
  }

  else{
    cerr << "error: not defined instructions" << endl;
  }

}
