# Sumii's Makefile for Min-Caml (for GNU Make)
# 
# ack.ml�ʤɤΥƥ��ȥץ�������test/���Ѱդ���make do_test��¹Ԥ���ȡ�
# min-caml��ocaml�ǥ���ѥ��롦�¹Ԥ�����̤�ư����Ӥ��ޤ���

RESULT = min-caml
NCSUFFIX = .opt
CC = gcc
CFLAGS = -g -O2 -Wall

default: debug-code top $(RESULT) do_test
$(RESULT): debug-code top
## [��ʬ�ʽ�����Ѥ���]
## ��OCamlMakefile��Ť�GNU Make�ΥХ�(?)�Ǿ�Τ褦�������ɬ��(??)
## ��OCamlMakefile�Ǥ�debug-code��native-code�Τ��줾���
##   .mli������ѥ��뤵��Ƥ��ޤ��Τǡ�ξ���Ȥ�default:�α��դ�������
##   ��make���ˡ�.mli���ѹ�����Ƥ���Τǡ�.ml��ƥ���ѥ��뤵���
clean:: nobackup

# ���⤷�������¤�����顢����˹�碌���Ѥ���
SOURCES = float.c type.ml id.ml m.ml s.ml \
syntax.ml parserMy.mly lexerMy.mll typingMy.ml \
kNormal.ml alpha.ml beta.ml assoc.ml \
inline.ml constFold.ml elim.ml \
closure.ml asmMy.ml virtualMy.ml \
simmMy.ml regAllocMy.ml emitMy.ml \
debug_util.ml debug_syntax.ml debug_knormal.ml debug_closure.ml \
mainMy.ml

# ���礷�ư�ĤΥ饤�֥��ˤ���ocaml interpreter�ǥ����ɤǤ���褦�ˤ���
FORLIB = type.cmo id.cmo m.cmo s.cmo syntax.cmo parserMy.cmo\
 lexerMy.cmo \
 typingMy.cmo kNormal.cmo  alpha.cmo  beta.cmo  assoc.cmo \
 inline.cmo  constFold.cmo  elim.cmo  closure.cmo  asmMy.cmo \
 virtualMy.cmo simmMy.cmo regAllocMy.cmo


min-caml.html: main.mli main.ml id.ml m.ml s.ml \
		syntax.ml type.ml parser.mly lexer.mll typing.mli typing.ml kNormal.mli kNormal.ml \
		alpha.mli alpha.ml beta.mli beta.ml assoc.mli assoc.ml \
		inline.mli inline.ml constFold.mli constFold.ml elim.mli elim.ml \
		closure.mli closure.ml asm.mli asm.ml virtual.mli virtual.ml \
		simm.mli simm.ml regAlloc.mli regAlloc.ml emit.mli emit.ml
	./to_sparc
	caml2html -o min-caml.html $^
	sed 's/.*<\/title>/MinCaml Source Code<\/title>/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	sed 's/charset=iso-8859-1/charset=euc-jp/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	ocaml str.cma anchor.ml < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html

release: min-caml.html
	rm -fr tmp ; mkdir tmp ; cd tmp ; cvs -d:ext:sumii@min-caml.cvs.sf.net://cvsroot/min-caml export -Dtomorrow min-caml ; tar cvzf ../min-caml.tar.gz min-caml ; cd .. ; rm -fr tmp
	cp Makefile stub.c SPARC/libmincaml.S min-caml.html min-caml.tar.gz ../htdocs/

for_lib:
	ocamlc -a $(FORLIB) -o mincaml_lib.cma

min-rt:
	../simulator/sim2 ./test/min-rt/min-rt-new.s < ./test/min-rt/sld/contest.sld | tee ./test/min-rt/sld/contest.ppm

pika:
	../simulator/sim2 ./test/min-rt/min-rt-new.s < ./test/min-rt/sld/pika.sld | tee ./test/min-rt/sld/pika.ppm

test_clean:
	rm -rf ./test/*.s ./test/*.b ./test/*__.ml

include OCamlMakefile