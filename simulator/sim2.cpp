#include "asm.h"

int ireg[INTREG_NUM];	// int register
float freg[INTREG_NUM];	// float register
int ram[DATA_RAM_SIZE/4];	// data teritory	(word幅のみでアクセス)

int fpcond;		// float condition register的な何か
int pc = 0;		// program counter

ULLI inst_num = 0;
int min_sp = 0x04000000;

// set<int> b_point;		// break point
// set<int> mon_ireg;
// set<int> mon_freg;
// set<int> mon_ram;

bool halt = false;
bool print = false;

int simulator(vector<inst> insts, map<int, string> addrToLabel, bool cont){

  for(int i=0; i < DATA_RAM_SIZE/4; i++){
    ram[i] = 0;
  }

  ireg[0] = 0;	// zero register

  // debug print
  // for(int i=0; i < insts.size(); i++){
  //   cerr << insts[i].line;
  //   cerr <<"name:"<< insts[i].name <<", rs:"<< insts[i].rs <<", rt:"<< insts[i].rt <<",rd:"<< insts[i].rd ;
  //   cerr <<", sham:"<< insts[i].sh <<", imme:"<< insts[i].im << endl;
  // }

  ireg[29] = 0x04000000;

  cont = true;

  if(cont){
    while(1){
      if(halt) break;
      // if(print){
      // 	showRegs();
      // }
      // if(inst_num % 10000000 == 0)
      // 	cerr << "print debug: " << ireg[29] << ", min_sp" << min_sp << endl;
      execInst(insts[pc]);
      if(ireg[29] <= min_sp) min_sp = ireg[29];
      // inst_num ++;
    }
    cerr << "r29(stack-min): " << min_sp << ", " << "r30(heap): " << ireg[30] << endl;
    cerr << "inst_num: " << inst_num << endl;
    for(int i=0; i < DATA_RAM_SIZE/4; i+=10000){
      cerr << "ram[" << i << "]: " << ram[i] << ", ";
    }
    return 0;
  }
  
  // string command;
  // while(cerr << ">> ", getline(cin,command)){

  //   if(command == "help"){
  //     cerr << "(help), (r_set), (b_set), (step), (cont), (exit)" << endl;
  //   }
  //   else if(command == "r_set"){
  //     ; // int r; cin >> r;
  //     // mon_regs.insert(r);a
  //   }
  //   else if(command == "b_set"){
  //     int b; cin >> b;
  //     b_point.insert(b);
  //   }
  //   else if(command == "step"){
  //     ULLI num; cin >> num;
  //     print = false;
  //     stepx(insts, num);
  //   }
  //   else if(command == "cont"){
  //     print = false;
  //     toBp(insts);
  //   }
  //   else if(command == "exit"){
  //     return 0;
  //   }
  //   else{
  //     print = true;
  //     execInst(insts[pc]);
  //   }
  //   cerr<<endl<<endl;
  //   cerr << inst_num << endl;
  //   showRegs(); showMems();
  //   cerr<<endl<<endl;

  //   if(halt){
  //     cerr << "! program halt !" << endl;
  //     break;
  //   }

  // }

  return 0;
}

// int stepx(vector<inst> insts, ULLI num){
//   if(halt){
//     cerr << "! program halt !" << endl;
//     return 0;
//   }
//   if(num <= 0)
//     return 0;
//   execInst(insts[pc]);
//   return stepx(insts, num - 1);
// }

// int toBp(vector<inst> insts){

//   // debug print
//   // showRegs(); showMems();

//   if(insts[pc].name == "halt"){
//     halt = true; return 0;}
//   if(b_point.find(pc) != b_point.end())
//     return 0;
//   inst nowi = insts[pc];
//   execInst(nowi);
//   return toBp(insts);
// }

// void showRegs(void){
//   cerr << "ireg" << endl;;
//   FOR(it, mon_ireg){
//     cerr <<"R["<< (*it) <<"]: "<< ireg[(*it)] << ", ";
//   }
//   cerr << endl;
//   cerr << "freg" << endl;
//   FOR(it, mon_freg){
//     cerr <<"F["<< (*it) <<"]: "<< freg[(*it)] << ", ";
//   }
//   cerr << endl;
//   cerr << "FPcond: " << fpcond << endl;
// }

// void showMems(void){
//   FOR(it, mon_ram){
//     cerr <<"M["<< (*it) <<"]: "<< ram[(*it)/4]<< ", ";
//   }
//   cerr << endl;
// }

void showRegs(void){
  cerr << "pc: " << pc << endl;
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

void execInst(inst nowi){
  if(print){
    cerr << "inst_num: " << inst_num << endl;
    cerr << "pc: " << (pc-1) << endl;
    cerr << nowi.line << endl;
  }
  pc += 1;

  if(nowi.op == 0x4 && nowi.rs == 0 && nowi.rt == 0 && nowi.im==-1){//nowi.name == "halt" 一番最初に持ってくる(beqとopcodeかぶってるから)
    //    cerr << "halt" << endl;
    halt = true;
  }
  else if(nowi.op == 0x0 && nowi.fu == 0x21){	//nowi.name == "addu"
//    cerr << "addu" << endl;
    ireg[nowi.rd] = ireg[nowi.rs] + ireg[nowi.rt];
  }
  else if(nowi.op == 0x0 && nowi.fu == 0x23){	//nowi.name == "subu"
  //  cerr << "subu" << endl;
    ireg[nowi.rd] = ireg[nowi.rs] - ireg[nowi.rt];
  }
  else if(nowi.op == 0x0 && nowi.fu == 0x2a){//nowi.name == "slt"
  //  cerr << "slt" << endl;
    if(ireg[nowi.rs] < ireg[nowi.rt]) ireg[nowi.rd] = 1;
    else ireg[nowi.rd] = 0;
  }

  else if(nowi.op == 0x23){//nowi.name == "lw"
 //   cerr << "lw" << endl;
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
  //  cerr << "sw" << endl;
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
  //  cerr << "beq" << endl;
    if(ireg[nowi.rt] == ireg[nowi.rs]) pc += nowi.im;
  }
  else if(nowi.op == 0x05){//nowi.name == "bne"
  //  cerr << "bne" << endl;
    if(ireg[nowi.rt] != ireg[nowi.rs]) pc += nowi.im;
  }

  else if(nowi.op == 0x8){//nowi.name == "addi"
  //  cerr << "addi" << endl;
    ireg[nowi.rt] = ireg[nowi.rs] + nowi.im;
  }
  else if(nowi.op == 0x0d){//nowi.name == "ori"
  //  cerr << "ori" << endl;
    ireg[nowi.rt] = ireg[nowi.rs] | nowi.im;
  }
  else if(nowi.op == 0x00 && nowi.fu == 0x00){	//nowi.name == "sll"
  //  cerr << "sll" << endl;
    ireg[nowi.rd] = ireg[nowi.rs] << nowi.sh;
  }
  else if(nowi.op == 0x00 && nowi.fu == 0x03){	//nowi.name == "sra"
  //  cerr << "sra" << endl;
    ireg[nowi.rd] = ireg[nowi.rs] >> nowi.sh;
  }

  else if(nowi.op == 0x0f){	//nowi.name == "lui"
  //  cerr << "lui" << endl;
    ireg[nowi.rt] = (nowi.im * 0x10000) & 0xFFFF0000;
  }

  else if(nowi.op == 0x00 && nowi.fu == 0x08){//nowi.name == "jr"
  //  cerr << "jr" << endl;
    pc = ireg[nowi.rs];
  }
  else if(nowi.op == 0x18 && nowi.fu == 0x00){//nowi.name == "input"
  //  cerr << "input" << endl;
    char c = getchar();
    ireg[nowi.rs] = (int)c;
  }
  else if(nowi.op == 0x18 && nowi.fu == 0x01){//nowi.name == "output"
  //  cerr << "output" << endl;
    cout << (char)(ireg[nowi.rs] & 0x000000FF);
  }

  else if(nowi.op == 0x02){	//nowi.name == "j"
  //  cerr << "j" << endl;
    pc = nowi.im;
  }
  else if(nowi.op == 0x03){	//nowi.name == "jal"
  //  cerr << "jal" << endl;
    ireg[31] = pc;
    pc = nowi.im;
  }  

  // float関係
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x0){//nowi.name == "add.s"
  //  cerr << "add.s" << endl;
    freg[nowi.rd] = freg[nowi.rs] + freg[nowi.rt];
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x1){//nowi.name == "sub.s"
  //  cerr << "sub.s" << endl;
    freg[nowi.rd] = freg[nowi.rs] - freg[nowi.rt];
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x2){//nowi.name == "mul.s"
  //  cerr << "mul.s" << endl;
    freg[nowi.rd] = freg[nowi.rs] * freg[nowi.rt];
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x3){//nowi.name == "div.s"
  //  cerr << "div.s" << endl;
    freg[nowi.rd] = freg[nowi.rs] / freg[nowi.rt];
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x4){//nowi.name == "fmove"
  //  cerr << "fmove" << endl;
    freg[nowi.rd] = freg[nowi.rs];
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x5){//nowi.name == "fneg"
  //  cerr << "fneg" << endl;
    freg[nowi.rd] = - freg[nowi.rs];
  }

  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x32){//nowi.name== "c.eq.s"
  //  cerr << "c.eq.s" << endl;
    if(freg[nowi.rs] == freg[nowi.rt])
      fpcond = 1;
    else
      fpcond = 0;
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x10 && nowi.fu == 0x3e){//nowi.name== "c.le.s"
  //  cerr << "c.le.s" << endl;
    if(freg[nowi.rs] <= freg[nowi.rt])
      fpcond = 1;
    else
      fpcond = 0;
  }

  else if(nowi.op == 0x30){//nowi.name == "lfl"){	// 上位16bitは保存する
  //  cerr << "lfl" << endl;
    conv c1, c2;
    c1.f = freg[nowi.rt];
    c2.i = (c1.i & 0xffff0000) | (nowi.im & 0xffff);
    freg[nowi.rt] = c2.f;
  }
  else if(nowi.op == 0x32){//nowi.name == "lfh"
  //  cerr << "lfh" << endl;
    conv c1;
    c1.i = (nowi.im << 16);
    freg[nowi.rt] = c1.f;
  }

  else if(nowi.op == 0x31){//nowi.name == "lwcl"
  //  cerr << "lwcl" << endl;
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
  //  cerr << "swcl" << endl;
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
  //  cerr << "bclt" << endl;
    if(fpcond == 1)
      pc += nowi.im;
  }
  else if(nowi.op == 0x11 && nowi.fmt == 0x8 && nowi.rt == 0x0){//nowi.name == "bclf"
  //  cerr << "bclf" << endl;
    if(fpcond == 0)
      pc += nowi.im;
  }

  else{
  //  cerr << "not found" << endl;
    cerr << "error: not defined instructions" << endl;
  }
  
}
