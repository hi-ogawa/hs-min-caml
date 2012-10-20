#include<iostream>
#include<fstream>
#include<string>
#include<cstring>
#include<cstdio>
#include<map>
#include<vector>
#include<set>

#define MAX_LINE_SIZE 512
#define INTREG_NUM 32
#define FREG_NUM 32
#define DATA_RAM_SIZE 0x04000000
#define UI unsigned int
#define ULLI unsigned long long int

#define eq(st1, st2) (strcmp(st1, st2) == 0)
#define FOR(i,c) for(__typeof((c).begin())i=(c).begin();i!=(c).end();++i)


using namespace std;

typedef enum{
  I_TYPE, R_TYPE, J_TYPE, FR_TYPE, FI_TYPE,
} type;

typedef struct _inst{
  type ty;
  string name;
  string label;
  string line;	// simulator 出力用

  int op;
  int rs;
  int rt;
  int rd;
  int sh;
  int fu;
  int im;
  int fmt;
} inst;

typedef union{
  int i;
  float f;
} conv;

// とりあえずRIJ形式だけ(float関係は後回し)
#define formL "%s %s"			// j, jal, bclt(F), bclf(F)
#define formR "%s $r%d"			// jr, input, output

#define formRI "%s $r%d, %d"		// lui
#define formRL "%s $r%d, %s"		// (la)

#define formRRI "%s $r%d, $r%d, %d"	// addi, ori, sll(shamt), sra(shamt)
#define formRRL "%s $r%d, $r%d, %s"	// beq, bne, (bgt, blt, bge, ble)
#define formRRR "%s $r%d, $r%d, $r%d"	// addu, subu, slt
#define formRIR "%s $r%d, %d($r%d)"	// lw, sw
// halt命令も追加 (擬似命令として beq $r0, $r0, -4)
// shift系はR形式だから注意

#define formFrFrFr "%s $f%d, $f%d, $f%d"	// add.s, sub.s, mul.s, div.s
#define formFrFr "%s $f%d, $f%d"	// fmove(F), fneg(F), c.eq.s(F), c.le.s(F)
#define formFrI	"%s $f%d, %d"	// lfl(F), lfh(F)
#define formFrIR "%s $f%d, %d($r%d)"	//lwcl, xwcl (float関係)


void transeInstructions(void);

inst label_resolve(inst, int);

vector<pair<inst,bool> > mnemonic(string, char*);

int simulator(vector<inst>, map<int, string>, bool);

void showRegs(void);

void showMems(void);

void execInst(inst);

int stepx(vector<inst>, ULLI);

int toBp(vector<inst>);

string encode_line(inst);

