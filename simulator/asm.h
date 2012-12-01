#include<iostream>
#include<iomanip>
#include<fstream>
#include<string>
#include<cstring>
#include<cstdio>
#include<ctime>
#include<map>
#include<vector>
#include<set>
#include<cmath>

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
  I_TYPE, R_TYPE, J_TYPE, FR_TYPE, FI_TYPE, B_TYPE
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
  int im2;
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
#define formRIRM "%s $r%d, %d($r%d)"	// lw, sw

#define formRRRM  "%s $r%d, $r%d($r%d)"  // lwr, swr
#define formFrRRM "%s $f%d, $r%d($r%d)"  // lwclr, swclr
#define formRIR "%s $r%d, %d, $r%d"	// slti, sgti
#define formRIL "%s $r%d, %d, %s"	// bgti, bnei, blti

#define formFrFrFr "%s $f%d, $f%d, $f%d"	// add.s, sub.s, mul.s, div.s
#define formFrFr "%s $f%d, $f%d"	// fmove(F), fneg(F), c.eq.s(F), c.le.s(F),sqrt
#define formFrI	"%s $f%d, %d"	// lfl(F), lfh(F)
#define formFrIRM "%s $f%d, %d($r%d)"	//lwcl, xwcl (float関係)

#define INSTNUM 42
#define HALT	0
#define AND	1
#define ADDU	2
#define SUBU	3
#define SLT	4
#define LW	5
#define SW	6
#define BEQ	7
#define BNE	8
#define ADDI	9	
#define ORI	10	
#define SLL	11	
#define SRA	12	
#define LUI	13	
#define JR	14	
#define INPUT	15	
#define OUTPUT	16	
#define J	17	
#define JAL	18	
#define ADDS	19	
#define SUBS	20	
#define MULS	21	
#define DIVS	22	
#define FMOVE	23	
#define FNEG	24	
#define CEQS	25	
#define CLES	26	
#define LFL	27	
#define LFH	28	
#define LWCL	29	
#define SWCL	30	
#define BCLT	31	
#define BCLF	32	
#define SQRT	33
// 追加 //
#define SLTI	34
#define SGEI	35
#define BNEI	36
#define LWR	37
#define SWR	38
#define LWCLR	39
#define SWCLR	40
#define FABS    41

void transeInstructions(void);

inst label_resolve(inst, int);

vector<pair<inst,bool> > mnemonic(string, char*);

int simulator(void);

void showRegs(void);

void showPcStat(void);
void showInstStat(void);

void execInst(void);

int stepx(ULLI);

int toBp(vector<inst>);

string encode_line(inst);

