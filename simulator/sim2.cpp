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

extern bool cont;
extern FILE* inputFile;
extern vector<inst> insts;
extern map<int,string> addrToLabel;

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

  if(cont){	// -c のオプションの時
    while(1){
      if(halt) break;
      execInst(insts[pc]);
    }
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
	showStat();
      }
      else if(command == "cont"){
	print = false;
	while(1){
	  if(halt) break;
	  execInst(insts[pc]);
	}
      }
      else{
	print = true;
	execInst(insts[pc]);
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

  showStat();
  cerr <<"ALL: "<< inst_num << endl;
  // for(int i=0; i < (int)pcStatistics.size(); i++){
  //   cerr << "pc " << i << " : " << pcStatistics[i] << endl;
  // }
  // for(int i=0; i < ireg[30] / 4; i+=1){
  //   if(ram[i] == 0)
  // 	cerr << "ram[" << i*4 << "]: " << ram[i] << endl;
  // }
  return 0;
}

void showStat(void){
  // cerr << "<< pcStatistics >>" << endl;
  // for(int i=0; i < (int)pcStatistics.size(); i++){
  //   if(addrToLabel.find(i) != addrToLabel.end())
  //     cerr <<", (label): "<< addrToLabel.find(i)->second << endl;
  //   cerr << "pc " << i << " : " << pcStatistics[i] << endl;
  // }
  // cerr << endl;
  cerr << "<< instStatistics >>" << endl;
  for(int i=0; i < INSTNUM; i++){
    fprintf(stderr, "%2d: %10llu\n", i, instStatistics[i]);
    //    cerr << i << ": " << instStatistics[i] << endl;
  }
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

// void showMems(void){
//   FOR(it, mon_ram){
//     cerr <<"M["<< (*it) <<"]: "<< ram[(*it)/4]<< ", ";
//   }
//   cerr << endl;
// }

int stepx(ULLI num){
  for(ULLI i=0; i<num; i++){
    if(halt){
      return 0;
    }
    execInst(insts[pc]);
  }
  return 0;
}

void execInst(inst nowi){

  if(ireg[29] <= min_sp) min_sp = ireg[29];  
  // if(inst_num % 10000000 == 0){
  //   cerr << "inst_num: " << inst_num << ", heap: " << ireg[30] << endl;
  // }

  if(print){
    if(addrToLabel.find(pc) != addrToLabel.end())
      cerr << "pc: " << pc << ", label: " << addrToLabel.find(pc)->second << endl;
    else 
      cerr << "pc: " << pc << endl;
    cerr << nowi.line;
    cerr <<"name:"<< nowi.name <<", rs:"<< nowi.rs;
    cerr <<", rt:"<< nowi.rt <<",rd:"<< nowi.rd;
    cerr <<", sham:"<< nowi.sh <<", imme:"<< nowi.im << endl;
  }
  pcStatistics[pc] = pcStatistics[pc] + 1;
  inst_num ++;
  pc ++;


  if(nowi.op == 0x4 && nowi.rs == 0 && nowi.rt == 0 && nowi.im==-1){//nowi.name == "halt" 一番最初に持ってくる(beqとopcodeかぶってるから)
    instStatistics[HALT] ++;
    halt = true;
  }
  else if(nowi.op == 0x0 && nowi.fu == 0x24){	//nowi.name == "and"
    instStatistics[AND] ++;
    ireg[nowi.rd] = ireg[nowi.rs] & ireg[nowi.rt];
  }
  else if(nowi.op == 0x0 && nowi.fu == 0x21){	//nowi.name == "addu"
    instStatistics[ADDU] ++;
    ireg[nowi.rd] = ireg[nowi.rs] + ireg[nowi.rt];
  }
  else if(nowi.op == 0x0 && nowi.fu == 0x23){	//nowi.name == "subu"
    instStatistics[SUBU] ++;
    ireg[nowi.rd] = ireg[nowi.rs] - ireg[nowi.rt];
  }
  else if(nowi.op == 0x0 && nowi.fu == 0x2a){//nowi.name == "slt"
    instStatistics[SLT] ++;
    if(ireg[nowi.rs] < ireg[nowi.rt]) ireg[nowi.rd] = 1;
    else ireg[nowi.rd] = 0;
  }

  else if(nowi.op == 0x23){//nowi.name == "lw"
    instStatistics[LW] ++;
    int addr = ireg[nowi.rs] + nowi.im;
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      ireg[nowi.rt] = ram[addr/4];
    }
    else{
      cerr << "ERROR: touching memory out of bounds, pc: " << pc << endl;
      cerr << nowi.line << endl;
      cerr << "inst_num: " << inst_num << endl;
      cerr << ", addr: " << addr << endl;
    }
  }
  else if(nowi.op == 0x2b){	//nowi.name == "sw"
    instStatistics[SW] ++;
    int addr = ireg[nowi.rs] + nowi.im;
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      ram[addr/4] = ireg[nowi.rt];
    }
    else{
      cerr << "ERROR: touching memory out of bounds, pc: " << pc << endl;
      cerr << nowi.line << endl;
      cerr << "inst_num: " << inst_num << endl;
      cerr << ", addr: " << addr << endl;
    }
  }

  else if(nowi.op == 0x04){//nowi.name == "beq"
    instStatistics[BEQ] ++;
    if(ireg[nowi.rt] == ireg[nowi.rs]) pc += nowi.im;
  }
  else if(nowi.op == 0x05){//nowi.name == "bne"
    instStatistics[BNE] ++;
    if(ireg[nowi.rt] != ireg[nowi.rs]) pc += nowi.im;
  }

  else if(nowi.op == 0x8){//nowi.name == "addi"
    instStatistics[ADDI] ++;
    ireg[nowi.rt] = ireg[nowi.rs] + nowi.im;
  }
  else if(nowi.op == 0x0d){//nowi.name == "ori"
    instStatistics[ORI] ++;
    ireg[nowi.rt] = ireg[nowi.rs] | nowi.im;
  }
  else if(nowi.op == 0x00 && nowi.fu == 0x00){	//nowi.name == "sll"
    instStatistics[SLL] ++;
    ireg[nowi.rd] = ireg[nowi.rs] << nowi.sh;
  }
  else if(nowi.op == 0x00 && nowi.fu == 0x03){	//nowi.name == "sra"
    instStatistics[SRA] ++;
    ireg[nowi.rd] = ireg[nowi.rs] >> nowi.sh;
  }

  else if(nowi.op == 0x0f){	//nowi.name == "lui"
    instStatistics[LUI] ++;
    ireg[nowi.rt] = (nowi.im * 0x10000) & 0xFFFF0000;
  }
  // 注意
  else if(nowi.op == 0x00 && nowi.fu == 0x08){//nowi.name == "jr"
    instStatistics[JR] ++;
    pc = ireg[nowi.rs] / 4;
  }
  else if(nowi.op == 0x18 && nowi.fu == 0x00){//nowi.name == "input"
    instStatistics[INPUT] ++;
    char c;
    if(inputFile != NULL)
      c = getc(inputFile);
    else
      c = getchar();
    ireg[nowi.rs] = (int)c;
  }
  else if(nowi.op == 0x18 && nowi.fu == 0x01){//nowi.name == "output"
    instStatistics[OUTPUT] ++;
    cout << (char)(ireg[nowi.rs] & 0x000000FF);
  }

  else if(nowi.op == 0x02){	//nowi.name == "j"
    instStatistics[J] ++;
    pc = nowi.im;
  }
  else if(nowi.op == 0x03){	//nowi.name == "jal"
    instStatistics[JAL] ++;
    ireg[31] = pc * 4;
    pc = nowi.im;
  }  

  // float関係
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x0){//nowi.name == "add.s"
    instStatistics[ADDS] ++;
    freg[nowi.rd] = freg[nowi.rs] + freg[nowi.rt];
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x1){//nowi.name == "sub.s"
    instStatistics[SUBS] ++;
    freg[nowi.rd] = freg[nowi.rs] - freg[nowi.rt];
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x2){//nowi.name == "mul.s"
    instStatistics[MULS] ++;
    freg[nowi.rd] = freg[nowi.rs] * freg[nowi.rt];
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x3){//nowi.name == "div.s"
    instStatistics[DIVS] ++;
    freg[nowi.rd] = freg[nowi.rs] / freg[nowi.rt];
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x4){//nowi.name == "fmove"
    instStatistics[FMOVE] ++;
    freg[nowi.rd] = freg[nowi.rs];
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x5){//nowi.name == "fneg"
    instStatistics[FNEG] ++;
    freg[nowi.rd] = - freg[nowi.rs];
  }

  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x32){//nowi.name== "c.eq.s"
    instStatistics[CEQS] ++;
    if(freg[nowi.rs] == freg[nowi.rt])
      fpcond = 1;
    else
      fpcond = 0;
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x3e){//nowi.name== "c.le.s"
    instStatistics[CLES] ++;
    if(freg[nowi.rs] <= freg[nowi.rt])
      fpcond = 1;
    else
      fpcond = 0;
  }

  else if(nowi.op == 0x30){//nowi.name == "lfl"){	// 上位16bitは保存する
    instStatistics[LFL] ++;
    conv c1, c2;
    c1.f = freg[nowi.rt];
    c2.i = (c1.i & 0xffff0000) | (nowi.im & 0xffff);
    freg[nowi.rt] = c2.f;
  }
  else if(nowi.op == 0x32){//nowi.name == "lfh"
    instStatistics[LFH] ++;
    conv c1;
    c1.i = (nowi.im << 16);
    freg[nowi.rt] = c1.f;
  }

  else if(nowi.op == 0x31){//nowi.name == "lwcl"
    instStatistics[LWCL] ++;
    int addr = ireg[nowi.rs] + nowi.im;
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      conv c1;
      c1.i = ram[addr/4];
      freg[nowi.rt] = c1.f;
    }else{
      cerr << "ERROR: touching memory out of bounds, pc: " << pc;
      cerr << ", addr: " << addr << endl;
      cerr << nowi.line << endl;
      showRegs();
    }
  }
  else if(nowi.op == 0x39){//nowi.name == "swcl"
    instStatistics[SWCL] ++;
    int addr = ireg[nowi.rs] + nowi.im;
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      conv c1;
      c1.f = freg[nowi.rt];
      ram[addr/4] = c1.i;
    }else{
      cerr << "ERROR: touching memory out of bounds, pc: " << pc;
      cerr << ", addr: " << addr << endl;
      cerr << nowi.line << endl;
      showRegs();
    }
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x8 && nowi.rt == 0x1){//nowi.name == "bclt"
    instStatistics[BCLT] ++;
    if(fpcond == 1)
      pc += nowi.im;
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x8 && nowi.rt == 0x0){//nowi.name == "bclf"
    instStatistics[BCLF] ++;
    if(fpcond == 0)
      pc += nowi.im;
  }
  else if(nowi.op == 0x34){
    instStatistics[SQRT] ++;
    freg[nowi.rd] = sqrt(freg[nowi.rs]);
  }

  else{
    cerr << "error: not defined instructions" << endl;
  }

}
