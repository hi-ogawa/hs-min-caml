#include <stdio.h>
#include <caml/mlvalues.h>
#include <caml/alloc.h>

typedef union {
  int32 i;
  unsigned int ui;
  float f;
} iuf;

value gethi(value v){
  iuf w;
  w.f = (float)Double_val(v);
  return copy_int32(w.ui >> 16);
}

value getlo(value v) {
  iuf w;
  w.f = (float)Double_val(v);
  return copy_int32(w.ui & 0x0000ffff);
}
