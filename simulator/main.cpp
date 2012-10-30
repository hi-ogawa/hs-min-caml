#include "asm.h"

map<string, int> labelNames;	// labelからaddrへの連想配列(label解決で利用)
map<int, string> addrToLabel;	// 上の逆
vector<pair<inst,bool> > pre_insts;	// label未解決の命令列
vector<inst> insts;			// label解決後の命令列(op, fu以外は格納済み)

int cur = 1;		// error時の行表示
bool error = false;	// truanse error
bool cont = false;	// sim option

char buffer[MAX_LINE_SIZE];	// アセンブリの１行
char instName[MAX_LINE_SIZE];	// 命令名

FILE* srcFile;
FILE* inputFile = NULL;

int main(int argc, char** argv){
  //  <USAGE>
  //   $ ./simulator src(~.s) dst(~.b)		==>>  assemble (.s) to (.b)
  //	or
  //   $ ./simulator src(~.s) -c		==>>  complete simulation
  //    or
  //   $ ./simulator src(~.s)			==>>  step simulation

  if((srcFile = fopen(argv[1], "r")) == NULL){
    cerr << "error: fopen, couldn't open " << argv[1] << endl;
    return 1;
  }

  transeInstructions();

  if(error){
    cerr << "error occurred, so return 1" << endl;
    return 1;
  }

  // option check
  if(argc >= 3){		
    if(strcmp(argv[2], "-b") == 0){
      ofstream ofs(argv[3]);
      cerr << "start: to binary code" << endl;
      for(int i=0; i < (int)insts.size(); i++){
	string bin = encode_line(insts[i]);
	if(addrToLabel.find(i) != addrToLabel.end())
	  ofs << bin <<"\t(LABEL): "<< addrToLabel[i] << insts[i].line;
	else
	  ofs << bin << insts[i].line;
      }
      return 0;
    }
    if(strcmp(argv[2], "-i") == 0){
      if((inputFile = fopen(argv[3], "r")) == NULL){
	cerr << "error: fopen, couldn't open " << argv[3] << endl;
	return 1;
      }
      cerr << "input from file" << endl;
    }
    if(strcmp(argv[2], "-c") == 0){
      cont = true;
      cerr << "continuation" << endl;
    }
    if(strcmp(argv[2], "-ci") == 0){
      cont = true;
      cerr << "continuation" << endl;
      if((inputFile = fopen(argv[3], "r")) == NULL){
	cerr << "error: fopen, couldn't open " << argv[3] << endl;
	return 1;
      }
      cerr << "input from file" << endl;
    }
    
  }


  //  debug  print (real instructions (not nmemonic))
  for(int i=0; i < (int)insts.size(); i++){
    // cerr << "(pc): " << i;
    // if(addrToLabel.find(i) != addrToLabel.end())
    //   cerr <<", (label): "<< addrToLabel.find(i)->second;
    // cerr<<", (inst): "<<insts[i].line;
    // cerr<<"name:"<<insts[i].name<< hex << ", op:0x"<<insts[i].op<< dec;
    // cerr<<", rs:"<< insts[i].rs <<", rt:"<< insts[i].rt <<", rd:"<< insts[i].rd;
    // cerr<<", sham:"<< insts[i].sh <<hex<<", fu: 0x"<< insts[i].fu <<dec<<", imme:"<< insts[i].im; 
    // cerr<<hex<<", fmt: 0x"<< insts[i].fmt<<dec<<endl<<endl;
  }

  cerr << "simulation started" << endl;
  simulator();
  cerr << "simulation ended" << endl;

  return 0;
}

void transeInstructions(void){
  char* str = NULL;

  cerr << "start: parsing asm" << endl;
  while(fgets(buffer, MAX_LINE_SIZE, srcFile) != NULL){

    //空行はスルー
    if(sscanf(buffer, "%s", instName) == 1){

      //label check
      if(strchr(buffer, ':')){
	if((str = strtok(instName, ":")) == NULL){
	  cerr << "error at label line " << cur << ">" << buffer << endl;
	  error = true;
	}
	// label登録
	labelNames[string(str)] = pre_insts.size();
	addrToLabel[pre_insts.size()] = string(str);
      }
      //comment check
      else if(strchr(instName,'!')){
      }
      //isa check
      else{
	//基本的に大きさ1で返る, [la, bgt, blt, bge, ble]は2つの命令が返る
	vector<pair<inst,bool> > instVec = mnemonic(instName, buffer);
	for(int i=0; i < (int)instVec.size(); i++){
	  pre_insts.push_back(instVec[i]);
	}
      }
    }
    cur++;
  }
  cerr << "ended: parsing asm" << endl;

  cerr << "start: label resolution" << endl;
  //label解決
  for(int i=0; i < (int)pre_insts.size(); i++){
    if(pre_insts[i].second){
      inst inst_resolved = label_resolve(pre_insts[i].first, i);
      insts.push_back(inst_resolved);
    }else{
      insts.push_back(pre_insts[i].first);
    }
  }

  cerr << "ended: label resolution" << endl;

}

inst label_resolve(inst pre, int now){
  int addr;
  bool error = false;

  // relative jump
  if( pre.name == "bne" || pre.name == "beq" || pre.name == "bclt" || pre.name == "bclf" ){

    // labelがちゃんと登録されてるか確認
    if(labelNames.count(pre.label)){
      addr = labelNames[pre.label];
      pre.im = (addr - now - 1);
      return pre;
    }
    cerr << "error: label_resolve: notfound" << pre.label << endl;
  }

  // absolute jump
  else if(pre.name == "j" || pre.name == "jal"){
    if(labelNames.count(pre.label)){
      addr = labelNames[pre.label];
      pre.im = addr;
      return pre;
    }
    cerr << "error: label_resolve: notfound" <<  pre.label <<endl;
  }
  else if(pre.name == "lui"){
    if(labelNames.count(pre.label)){
      addr = labelNames[pre.label];
      pre.im = (addr) & 0xFFFF0000;
      return pre;
    }
    cerr << "error: label_resolve: notfound" << pre.label << endl;
  }
  else if(pre.name == "ori"){
    if(labelNames.count(pre.label)){
      addr = labelNames[pre.label];
      pre.im = (addr) & 0x0000FFFF;
      return pre;
    }
    cerr << "error: label_resolve: notfound" << pre.label << endl;
  }
  else{ error = true;}
  cerr << "error: label_resolve: pre is not LABEL instruction > " << pre.name << endl;
  return pre;
}


vector<pair<inst,bool> > mnemonic(string instName, char* buffer){
  int rs = 0;
  int rt = 0;
  char dummy[MAX_LINE_SIZE];
  char label[MAX_LINE_SIZE];
  inst i1, i2;
  i1.line = string(buffer);	// simulatorの出力
  i2.line = "\t(MNE) " + string(buffer);
  i1.op = i1.rs = i1.rt = i1.rd = i1.sh = i1.fu = i1.im = i1.fmt = 0;
  i2.op = i2.rs = i2.rt = i2.rd = i2.sh = i2.fu = i2.im = i2.fmt = 0;

  // return instruction and bool(use label or not)
  vector<pair<inst, bool> > instVec;
    
  // 2命令に展開するニーモニック
  if(instName =="la"){
    if(sscanf(buffer, formRL, dummy, &rt, label) == 3){
      i1.ty = I_TYPE; i1.name = string("lui"); i1.rt = rt; i1.label = string(label);
      i1.op = 0xf;
      i2.ty = I_TYPE; i2.name = string("ori"); i2.rt = i2.rs = rt; i2.label = string(label);
      i2.op = 0xd;
      
      instVec.push_back(make_pair(i1, true));
      instVec.push_back(make_pair(i2, true));
      return instVec;
    }
    cerr << "error: mnemonic, la" << endl;
    error = true;
  }
  else if(instName == "bgt"){
    if(sscanf(buffer, formRRL, dummy, &rs, &rt, label) == 4){
      i1.ty = R_TYPE; i1.name = string("slt");
      i1.rd = 1; i1.rt = rs; i1.rs = rt;
      i1.op = 0x0; i1.fu = 0x2a;
      i2.ty = I_TYPE; i2.name = string("bne"); i2.label = string(label);
      i2.rt = 1; i2.rs = 0;
      i2.op = 0x5;

      instVec.push_back(make_pair(i1, false));
      instVec.push_back(make_pair(i2, true));      
      return instVec;
    }
    cerr << "error: mnemonic, bgt" << endl;
    error = true;
  }
  else if(instName == "blt"){
    if(sscanf(buffer, formRRL, dummy, &rs, &rt, label) == 4){
      i1.ty = R_TYPE; i1.name = string("slt");
      i1.rd = 1; i1.rt = rt; i1.rs = rs;
      i1.op = 0x0; i1.fu = 0x2a;
      i2.ty = I_TYPE; i2.name = string("bne"); i2.label = string(label);
      i2.rt = 1; i2.rs = 0;
      i2.op = 0x5;

      instVec.push_back(make_pair(i1, false));
      instVec.push_back(make_pair(i2, true));      
      return instVec;
    }
    cerr << "error: mnemonic, blt" << endl;
    error = true;
  }
  else if(instName == "bge"){
    if(sscanf(buffer, formRRL, dummy, &rs, &rt, label) == 4){
      i1.ty = R_TYPE; i1.name = string("slt");
      i1.rd = 1; i1.rt = rt; i1.rs = rs;
      i1.op = 0x0; i1.fu = 0x2a;
      i2.ty = I_TYPE; i2.name = string("beq"); i2.label = string(label);
      i2.rt = 1; i2.rs = 0;
      i2.op = 0x4;

      instVec.push_back(make_pair(i1, false));
      instVec.push_back(make_pair(i2, true));      
      return instVec;
    }
    cerr << "error: mnemonic, bge" << endl;
    error = true;
  }
  else if(instName == "ble"){
    if(sscanf(buffer, formRRL, dummy, &rs, &rt, label) == 4){
      i1.ty = R_TYPE; i1.name = string("slt");
      i1.rd = 1; i1.rt = rs; i1.rs = rt;
      i1.op = 0x0; i1.fu = 0x2a;
      i2.ty = I_TYPE; i2.name = string("beq"); i2.label = string(label);
      i2.rt = 1; i2.rs = 0;
      i2.op = 0x4;

      instVec.push_back(make_pair(i1, false));
      instVec.push_back(make_pair(i2, true));      
      return instVec;
    }
    cerr << "error: mnemonic, ble" << endl;
    error = true;
  }

  // そのまんま命令(擬似命令でない命令)
  // formRRR
  else if(instName == "addu"){
    if(sscanf(buffer, formRRR, dummy, &(i1.rd), &(i1.rs), &(i1.rt)) == 4){
      i1.ty = R_TYPE; i1.name = string("addu");
      i1.op = 0x0; i1.fu = 0x21;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, addu" << endl;
    error = true;
  }
  else if(instName == "subu"){
    if(sscanf(buffer, formRRR, dummy, &(i1.rd), &(i1.rs), &(i1.rt)) == 4){
      i1.ty = R_TYPE; i1.name = string("subu");
      i1.op = 0x0; i1.fu = 0x23;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, subu" << endl;
    error = true;
  }
  else if(instName == "slt"){
    if(sscanf(buffer, formRRR, dummy, &(i1.rd), &(i1.rs), &(i1.rt)) == 4){
      i1.ty = R_TYPE; i1.name = string("slt");
      i1.op = 0x0; i1.fu = 0x2a;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, slt" << endl;
    error = true;
  }
  
  // formRRI
  else if(instName == "addi"){
    if(sscanf(buffer, formRRI, dummy, &(i1.rt), &(i1.rs), &(i1.im)) == 4){
      i1.ty = I_TYPE; i1.name = string("addi");
      i1.op = 0x8;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, addi" << endl;
    error = true;
  }
  else if(instName == "sll"){	// 実はR形式
    if(sscanf(buffer, formRRI, dummy, &(i1.rd), &(i1.rs), &(i1.sh)) == 4){
      i1.ty = R_TYPE; i1.name = string("sll");
      i1.op = 0x00; i1.fu = 0x00;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, sll" << endl;
    error = true;
  }
  else if(instName == "sra"){	// 実はR形式
    if(sscanf(buffer, formRRI, dummy, &(i1.rd), &(i1.rs), &(i1.sh)) == 4){
      i1.ty = R_TYPE; i1.name = string("sra");
      i1.op = 0x00; i1.fu = 0x03;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, sra" << endl;
    error = true;
  }
  else if(instName == "ori"){
    if(sscanf(buffer, formRRI, dummy, &(i1.rt), &(i1.rs), &(i1.im)) == 4){
      i1.ty = I_TYPE; i1.name = string("ori");
      i1.op = 0x0d;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, ori" << endl;
    error = true;
  }

  // formRRL
  else if(instName == "beq"){
    if(sscanf(buffer, formRRL, dummy, &(i1.rt), &(i1.rs), label) == 4){
      i1.ty = I_TYPE; i1.name = string("beq"); i1.label = string(label);
      i1.op = 0x04;
      instVec.push_back(make_pair(i1, true));
      return instVec;
    }
    cerr << "error: mnemonic, beq" << endl;
    error = true;
  }
  else if(instName == "bne"){
    if(sscanf(buffer, formRRL, dummy, &(i1.rt), &(i1.rs), label) == 4){
      i1.ty = I_TYPE; i1.name = string("bne"); i1.label = string(label);
      i1.op = 0x05;
      instVec.push_back(make_pair(i1, true));
      return instVec;
    }
    cerr << "error: mnemonic, bne" << endl;
    error = true;
  }

  // formRIR
  else if(instName == "lw"){
    if(sscanf(buffer, formRIR, dummy, &(i1.rt), &(i1.im), &(i1.rs)) == 4){
      i1.ty = I_TYPE; i1.name = string("lw");
      i1.op = 0x23;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, lw" << endl;
    error = true;
  }
  else if(instName == "sw"){
    if(sscanf(buffer, formRIR, dummy, &(i1.rt), &(i1.im), &(i1.rs)) == 4){
      i1.ty = I_TYPE; i1.name = string("sw");
      i1.op = 0x2b;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, sw" << endl;
    error = true;
  }

  // formRI
  else if(instName == "lui"){
    if(sscanf(buffer, formRI, dummy, &(i1.rt), &(i1.im)) == 3){
      i1.ty = I_TYPE; i1.name = string("lui");
      i1.op = 0x0f;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, lui" << endl;
    error = true;
  }

  // formL
  else if(instName == "j"){
    if(sscanf(buffer, formL, dummy, label) == 2){
      i1.ty = J_TYPE; i1.name = string("j"); i1.label = string(label);
      i1.op = 0x02;
      instVec.push_back(make_pair(i1, true));
      return instVec;
    }
    cerr << "error: mnemonic, j" << endl;
    error = true;
  }  
  else if(instName == "jal"){
    if(sscanf(buffer, formL, dummy, label) == 2){
      i1.ty = J_TYPE; i1.name = string("jal"); i1.label = string(label);
      i1.op = 0x03;
      instVec.push_back(make_pair(i1, true));
      return instVec;
    }
    cerr << "error: mnemonic, jal" << endl;
    error = true;
  }

  // formR
  else if(instName == "jr"){
    if(sscanf(buffer, formR, dummy, &(i1.rs)) == 2){
      i1.ty = R_TYPE; i1.name = string("jr");
      i1.op = 0x00; i1.fu = 0x08;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, jr" << endl;
    error = true;
  }
  else if(instName == "input"){
    if(sscanf(buffer, formR, dummy, &(i1.rs)) == 2){
      i1.ty = R_TYPE; i1.name = string("input");
      i1.op = 0x18; i1.fu = 0x00; i1.rt = i1.rd = i1.rs;
      // とりあえずrs,rt,rd全部に突っ込む

      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, input" << endl;
    error = true;
  }
  else if(instName == "output"){
    if(sscanf(buffer, formR, dummy, &(i1.rs)) == 2){
      i1.ty = R_TYPE; i1.name = string("output");
      i1.op = 0x18; i1.fu = 0x01;
      i1.rt = i1.rd = i1.rs;
      // とりあえずrs,rt,rd全部に突っ込む

      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, output" << endl;
    error = true;
  }
  else if(instName == "halt"){	//擬似命令として [beq $r0, $r0, -1] に置き換える
    i1.name = string("halt");
    i1.ty = I_TYPE;
    i1.op = 0x4; i1.rs = 0; i1.rt = 0; i1.im = -1;
    instVec.push_back(make_pair(i1, false));
    return instVec;
  }


  // float周りの実装
  else if(instName == "lwcl"){
    if(sscanf(buffer, formFrIR, dummy, &(i1.rt), &(i1.im), &(i1.rs)) == 4){
      i1.ty = I_TYPE; i1.name = string("lwcl");
      i1.op = 0x31;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, lwcl" << endl;
  }
  else if(instName == "swcl"){
    if(sscanf(buffer, formFrIR, dummy, &(i1.rt), &(i1.im), &(i1.rs)) == 4){
      i1.ty = I_TYPE; i1.name = string("swcl");
      i1.op = 0x39;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, swcl" << endl;
  }

  else if(instName == "bclt"){
    if(sscanf(buffer, formL, dummy, label) == 2){
      i1.ty = FI_TYPE; i1.name = instName; i1.label = string(label);
      i1.op = 0x11; i1.fmt = 0x8; i1.rt = 0x1;		// functじゃなくてftで指定
      instVec.push_back(make_pair(i1, true));
      return instVec;
    }
    cerr << "error: mnemonic, " << instName << endl;
  }
  else if(instName == "bclf"){
    if(sscanf(buffer, formL, dummy, label) == 2){
      i1.ty = FI_TYPE; i1.name = instName; i1.label = string(label);
      i1.op = 0x11; i1.fmt = 0x8; i1.rt = 0x0;		// functじゃなくてftで指定
      instVec.push_back(make_pair(i1, true));
      return instVec;
    }
    cerr << "error: mnemonic, " << instName << endl;
  }

  else if(instName == "add.s"){
    if(sscanf(buffer, formFrFrFr, dummy, &(i1.rd), &(i1.rs), &(i1.rt)) == 4){
      i1.ty = FR_TYPE; i1.name = instName;
      i1.op = 0x11; i1.fmt = 0x10; i1.fu = 0x0;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, " << instName << endl;
  }
  else if(instName == "sub.s"){
    if(sscanf(buffer, formFrFrFr, dummy, &(i1.rd), &(i1.rs), &(i1.rt)) == 4){
      i1.ty = FR_TYPE; i1.name = instName;
      i1.op = 0x11; i1.fmt = 0x10; i1.fu = 0x1;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, " << instName << endl;
  }
  else if(instName == "mul.s"){
    if(sscanf(buffer, formFrFrFr, dummy, &(i1.rd), &(i1.rs), &(i1.rt)) == 4){
      i1.ty = FR_TYPE; i1.name = instName;
      i1.op = 0x11; i1.fmt = 0x10; i1.fu = 0x2;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, " << instName << endl;
  }
  else if(instName == "div.s"){
    if(sscanf(buffer, formFrFrFr, dummy, &(i1.rd), &(i1.rs), &(i1.rt)) == 4){
      i1.ty = FR_TYPE; i1.name = instName;
      i1.op = 0x11; i1.fmt = 0x10; i1.fu = 0x3;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, " << instName << endl;
  }

  else if(instName == "fmove"){
    if(sscanf(buffer, formFrFr, dummy, &(i1.rd), &(i1.rs)) == 3){
      i1.ty = FR_TYPE; i1.name = instName;
      i1.op = 0x11; i1.fmt = 0x10; i1.fu = 0x4;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, " << instName << endl;    
  }
  else if(instName == "fneg"){
    if(sscanf(buffer, formFrFr, dummy, &(i1.rd), &(i1.rs)) == 3){
      i1.ty = FR_TYPE; i1.name = instName;
      i1.op = 0x11; i1.fmt = 0x10; i1.fu = 0x5;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, " << instName << endl;    
  }
  else if(instName == "c.eq.s"){
    if(sscanf(buffer, formFrFr, dummy, &(i1.rs), &(i1.rt)) == 3){
      i1.ty = FR_TYPE; i1.name = instName;
      i1.op = 0x11; i1.fmt = 0x10; i1.fu = 0x32;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, " << instName << endl;    
  }
  else if(instName == "c.le.s"){
    if(sscanf(buffer, formFrFr, dummy, &(i1.rs), &(i1.rt)) == 3){
      i1.ty = FR_TYPE; i1.name = instName;
      i1.op = 0x11; i1.fmt = 0x10; i1.fu = 0x3e;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, " << instName << endl;    
  }

  else if(instName == "lfl"){
    if(sscanf(buffer, formFrI, dummy, &(i1.rt), &(i1.im)) == 3){
      i1.ty = FI_TYPE; i1.name = instName;
      i1.op = 0x30;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, " << instName << endl;
  }
  else if(instName == "lfh"){
    if(sscanf(buffer, formFrI, dummy, &(i1.rt), &(i1.im)) == 3){
      i1.ty = FI_TYPE; i1.name = instName;
      i1.op = 0x32;
      instVec.push_back(make_pair(i1, false));
      return instVec;
    }
    cerr << "error: mnemonic, " << instName << endl;
  }
  else{error = true;}

  cerr << "error: mnemonic, not defined instruction at the line - " << cur << ", name - " << instName << endl;
  return instVec;
}
