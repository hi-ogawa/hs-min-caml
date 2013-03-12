#include "asm.h"

// floatはまだ対応してない

string r_type(UI op, UI rs, UI rt, UI rd, UI sh, UI fu){		
  UI binui = (UI)(op << 26 | rs << 21 | rt << 16 | rd << 11 | sh << 6 | fu);
  string bin("");
  int i;
  for(i=0; i < 6; i++){ bin = (((binui >> i) & 0x01) ? "1" : "0") + bin;}
  // bin = " " + bin;
  for(i=6; i < 11; i++){ bin = (((binui >> i) & 0x01) ? "1" : "0") + bin;}
  // bin = " " + bin;
  for(i=11; i < 16; i++){ bin = (((binui >> i) & 0x01) ? "1" : "0") + bin;}
  // bin = " " + bin;
  for(i=16; i < 21; i++){ bin = (((binui >> i) & 0x01) ? "1" : "0") + bin;}
  // bin = " " + bin;
  for(i=21; i < 26; i++){ bin = (((binui >> i) & 0x01) ? "1" : "0") + bin;}
  // bin = " " + bin;
  for(i=26; i < 32; i++){ bin = (((binui >> i) & 0x01) ? "1" : "0") + bin;}
  return bin;
}

string i_type(UI op, UI rs, UI rt, UI im){
  UI binui = (UI)(op << 26 | rs << 21 | rt << 16 | im);
  string bin("");
  int i;
  for(i=0; i < 16; i++){ bin = (((binui >> i) & 0x01) ? "1" : "0") + bin;}
  // bin = " " + bin;
  for(i=16; i < 21; i++){ bin = (((binui >> i) & 0x01) ? "1" : "0") + bin;}
  // bin = " " + bin;
  for(i=21; i < 26; i++){ bin = (((binui >> i) & 0x01) ? "1" : "0") + bin;}
  // bin = " " + bin;
  for(i=26; i < 32; i++){ bin = (((binui >> i) & 0x01) ? "1" : "0") + bin;}
  return bin;
}

string j_type(UI op, UI im){
  UI binui = (UI)(op << 26 | im);
  string bin("");
  int i;
  for(i=0; i < 26; i++){ bin = (((binui >> i) & 0x01) ? "1" : "0") + bin;}
  // bin = " " + bin;
  for(i=26; i < 32; i++){ bin = (((binui >> i) & 0x01) ? "1" : "0") + bin;}
  return bin;
}

string encode_line(inst i1){
  switch(i1.ty){
  case R_TYPE:
    return r_type((i1.op & 0x3f), (i1.rs & 0x1f), (i1.rt & 0x1f), (i1.rd & 0x1f), (i1.sh & 0x1f), (i1.fu & 0x3f));
  case I_TYPE:
    return i_type((i1.op & 0x3f), (i1.rs & 0x1f), (i1.rt & 0x1f), (i1.im & 0xffff));
  case J_TYPE:
    return j_type((i1.op & 0x3f), (i1.im & 0x3ffffff));
  case FR_TYPE:
    return r_type((i1.op & 0x3f), (i1.fmt & 0x1f), (i1.rt & 0x1f), (i1.rs & 0x1f), (i1.rd & 0x1f), (i1.fu & 0x3f));
  case FI_TYPE:
    return i_type((i1.op & 0x3f), (i1.fmt & 0x1f), (i1.rt & 0x1f), (i1.im & 0xffff));
  case B_TYPE:
    return i_type((i1.op & 0x3f), (i1.rs & 0x1f), (i1.im2 & 0x1f), (i1.im & 0xffff));
  }
  return "";
}
