#include "asm.h"

int ireg[INTREG_NUM];	// int register
float freg[INTREG_NUM];	// float register
int ram[DATA_RAM_SIZE/4];	// data teritory	(word幅のみでアクセス)

int fpcond;		// float condition register的な何か
int pc = 0;		// program counter

set<int> b_point;		// break point
set<int> mon_ireg;
set<int> mon_freg;
set<int> mon_ram;

bool halt = false;
bool print = true;

int simulator(vector<inst> insts, map<int, string> addrToLabel, bool cont){

  ireg[0] = 0;	// zero register

  // debug print
  // for(int i=0; i < insts.size(); i++){
  //   cerr << insts[i].line;
  //   cerr <<"name:"<< insts[i].name <<", rs:"<< insts[i].rs <<", rt:"<< insts[i].rt <<",rd:"<< insts[i].rd ;
  //   cerr <<", sham:"<< insts[i].sh <<", imme:"<< insts[i].im << endl;
  // }

  if(cont){
    print = false; toBp(insts); return 0;
  }
  
  string command;
  while(cerr << ">> ", getline(cin,command)){

    if(command == "help"){
      cerr << "(help), (r_set), (b_set), (step), (cont), (exit)" << endl;
    }
    else if(command == "r_set"){
      ; // int r; cin >> r;
      // mon_regs.insert(r);a
    }
    else if(command == "b_set"){
      int b; cin >> b;
      b_point.insert(b);
    }
    else if(command == "step"){
      print = true;
      execInst(insts[pc]);
    }
    else if(command == "cont"){
      print = false;
      toBp(insts);
    }
    else if(command == "exit"){
      return 0;
    }
    else{
      print = true;
      execInst(insts[pc]);
    }
    cerr<<endl<<endl;
    showRegs(); showMems();
    cerr<<endl<<endl;

    if(halt){
      cerr << "!program halt!" << endl;
      break;
    }

  }
  return 0;
}

int toBp(vector<inst> insts){

  // debug print
  // showRegs(); showMems();

  if(insts[pc].name == "halt"){
    halt = true; return 0;}
  if(b_point.find(pc) != b_point.end())
    return 0;
  inst nowi = insts[pc];
  execInst(nowi);
  toBp(insts);
  return 0;
}

void showRegs(void){
  cerr << "ireg" << endl;;
  FOR(it, mon_ireg){
    cerr <<"R["<< (*it) <<"]: "<< ireg[(*it)] << ", ";
  }
  cerr << endl;
  cerr << "freg" << endl;
  FOR(it, mon_freg){
    cerr <<"F["<< (*it) <<"]: "<< freg[(*it)] << ", ";
  }
  cerr << endl;
  cerr << "FPcond: " << fpcond << endl;
}

void showMems(void){
  FOR(it, mon_ram){
    cerr <<"M["<< (*it) <<"]: "<< ram[(*it)/4]<< ", ";
  }
  cerr << endl;
}

void execInst(inst nowi){
  pc += 1;

  if(print){
    cerr << "pc: " << (pc-1);
    cerr << nowi.line;
    cerr <<"name:"<< nowi.name <<", rs:"<< nowi.rs <<", rt:"<< nowi.rt <<",rd:"<< nowi.rd ;
    cerr <<", sham:"<< nowi.sh <<", imme:"<< nowi.im << endl;
  }

  if(nowi.name == "addu"){
    mon_ireg.insert(nowi.rd);
    ireg[nowi.rd] = ireg[nowi.rs] + ireg[nowi.rt];
  }
  else if(nowi.name == "subu"){
    mon_ireg.insert(nowi.rd);    
    ireg[nowi.rd] = ireg[nowi.rs] - ireg[nowi.rt];
  }
  else if(nowi.name == "slt"){
    mon_ireg.insert(nowi.rd);
    if(ireg[nowi.rs] < ireg[nowi.rt]) ireg[nowi.rd] = 1;
    else ireg[nowi.rd] = 0;
  }

  else if(nowi.name == "lw"){
    int mem_addr = ireg[nowi.rs] + nowi.im;
    if(mon_ram.find(mem_addr) != mon_ram.end()){
      if(0 <= mem_addr && mem_addr <= 0x3fffff){
	mon_ireg.insert(nowi.rt);	
	ireg[nowi.rt] = ram[mem_addr/4];
      }
      else
	cerr << "ERROR: Touching memory out of bounds!!" << endl;
    }
    else{ cerr << "error: not initiated memory!" << endl;}
  }
  else if(nowi.name == "sw"){
    int mem_addr = ireg[nowi.rs] + nowi.im;
    if(0 <= mem_addr && mem_addr <= 0x3fffff){
      mon_ram.insert(mem_addr);
      ram[mem_addr/4] = ireg[nowi.rt];
    }
    else
      cerr << "ERROR: Touching memory out of bounds!!" << endl;
  }

  else if(nowi.name == "beq"){
    if(ireg[nowi.rt] == ireg[nowi.rs]) pc += nowi.im;
  }
  else if(nowi.name == "bne"){
    if(ireg[nowi.rt] != ireg[nowi.rs]) pc += nowi.im;
  }

  else if(nowi.name == "addi"){
    mon_ireg.insert(nowi.rt);	
    ireg[nowi.rt] = ireg[nowi.rs] + nowi.im;
  }
  else if(nowi.name == "ori"){
    mon_ireg.insert(nowi.rt);	
    ireg[nowi.rt] = ireg[nowi.rs] | nowi.im;
  }
  else if(nowi.name == "sll"){
    mon_ireg.insert(nowi.rd);	
    ireg[nowi.rd] = ireg[nowi.rs] << nowi.sh;
  }
  else if(nowi.name == "sra"){
    mon_ireg.insert(nowi.rd);	
    ireg[nowi.rd] = ireg[nowi.rs] >> nowi.sh;
  }

  else if(nowi.name == "lui"){
    mon_ireg.insert(nowi.rt);	
    ireg[nowi.rt] = (nowi.im * 0x10000) & 0xFFFF0000;
  }

  else if(nowi.name == "jr"){
    pc = ireg[nowi.rs];
  }
  else if(nowi.name == "input"){
    mon_ireg.insert(nowi.rs);	
    if(print)
      cerr << "INPUT PLEASE > ";
    char c = getchar();
    ireg[nowi.rs] = (int)c;
  }
  else if(nowi.name == "output"){
    if(print)
      cerr << "OUTPUT > ";
    cout << (char)(ireg[nowi.rs] & 0x000000FF);
  }

  else if(nowi.name == "j"){
    pc = nowi.im;
  }
  else if(nowi.name == "jal"){
    mon_ireg.insert(31);	    
    ireg[31] = pc;
    pc = nowi.im;
  }  

  else if(nowi.name == "halt"){
    halt = true;
  }

  // float関係
  else if(nowi.name == "add.s"){
    mon_freg.insert(nowi.rd);
    freg[nowi.rd] = freg[nowi.rs] + freg[nowi.rt];
  }
  else if(nowi.name == "sub.s"){
    mon_freg.insert(nowi.rd);
    freg[nowi.rd] = freg[nowi.rs] - freg[nowi.rt];
  }
  else if(nowi.name == "mul.s"){
    mon_freg.insert(nowi.rd);
    freg[nowi.rd] = freg[nowi.rs] * freg[nowi.rt];
  }
  else if(nowi.name == "div.s"){
    mon_freg.insert(nowi.rd);
    freg[nowi.rd] = freg[nowi.rs] / freg[nowi.rt];
  }
  else if(nowi.name == "fmove"){
    mon_freg.insert(nowi.rd);
    freg[nowi.rd] = freg[nowi.rs];
  }
  else if(nowi.name == "fneg"){
    mon_freg.insert(nowi.rd);
    freg[nowi.rd] = - freg[nowi.rs];
  }

  else if(nowi.name == "c.eq.s"){
    if(freg[nowi.rs] == freg[nowi.rt])
      fpcond = 1;
    else
      fpcond = 0;
  }
  else if(nowi.name == "c.le.s"){
    if(freg[nowi.rs] <= freg[nowi.rt])
      fpcond = 1;
    else
      fpcond = 0;
  }

  else if(nowi.name == "lfl"){	// 上位16bitは保存する
    mon_freg.insert(nowi.rt);
    conv c1, c2;
    c1.f = freg[nowi.rt];
    c2.i = (c1.i & 0xffff0000) | (nowi.im & 0xffff);
    freg[nowi.rt] = c2.f;
  }
  else if(nowi.name == "lfh"){
    mon_freg.insert(nowi.rt);
    conv c1;
    c1.i = (nowi.im << 16);
    freg[nowi.rt] = c1.f;
  }

  else if(nowi.name == "lwcl"){
    int addr = ireg[nowi.rs] + nowi.im;
    if(mon_ram.find(addr) != mon_ram.end()){
      if(0 <= addr && addr <= DATA_RAM_SIZE){
	mon_freg.insert(nowi.rt);
	conv c1;
	c1.i = ram[addr/4];
	freg[nowi.rt] = c1.f;
      }else{
	cerr << "error: touching memory out of bounds" << endl;
      }
    }else{
      cerr << "error: not initiated memory" << endl;
    }
  }
  else if(nowi.name == "swcl"){
    int addr = ireg[nowi.rs] + nowi.im;
    if(0 <= addr && addr <= DATA_RAM_SIZE){
      mon_ram.insert(addr);
      conv c1;
      c1.f = freg[nowi.rt];
      ram[addr/4] = c1.i;
    }else{
      cerr << "error: touching memory out of bounds" << endl;
    }
  }
  else if(nowi.name == "bclt"){
    if(fpcond == 1)
      pc += nowi.im;
  }
  else if(nowi.name == "bclf"){
    if(fpcond == 0)
      pc += nowi.im;
  }
  else{
    cerr << "error: not defined instructions" << endl;
  }
  
}
