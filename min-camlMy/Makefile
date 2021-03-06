# Sumii's Makefile for Min-Caml (for GNU Make)
# 
# ack.mlなどのテストプログラムをtest/に用意してmake do_testを実行すると、
# min-camlとocamlでコンパイル・実行した結果を自動で比較します。

RESULT = min-caml
NCSUFFIX = .opt
CC = gcc
CFLAGS = -g -O2 -Wall

default: debug-code top $(RESULT) do_test
$(RESULT): debug-code top
## [自分（住井）用の注]
## ・OCamlMakefileや古いGNU Makeのバグ(?)で上のような定義が必要(??)
## ・OCamlMakefileではdebug-codeとnative-codeのそれぞれで
##   .mliがコンパイルされてしまうので、両方ともdefault:の右辺に入れると
##   再make時に（.mliが変更されているので）.mlも再コンパイルされる
clean:: nobackup

# ↓もし実装を改造したら、それに合わせて変える
SOURCES = float.c type.ml id.ml m.ml s.ml \
syntax.ml parserMy.mly lexerMy.mll typingMy.ml \
kNormal.ml alpha.ml elimEqExp.ml beta.ml assoc.ml \
inline.ml constFold.ml elim.ml \
closure.ml asmMy.ml virtualMy.ml \
simmMy.ml regAllocMy.ml emitMy.ml \
debug_util.ml debug_syntax.ml debug_knormal.ml debug_closure.ml \
mainMy.ml

# 統合して一つのライブラリにし、ocaml interpreterでロードできるようにする
FORLIB = type.cmo id.cmo m.cmo s.cmo syntax.cmo parserMy.cmo\
 lexerMy.cmo \
 typingMy.cmo kNormal.cmo  alpha.cmo elimEqExp.cmo beta.cmo  assoc.cmo \
 inline.cmo  constFold.cmo  elim.cmo  closure.cmo  asmMy.cmo \
 virtualMy.cmo simmMy.cmo regAllocMy.cmo \
debug_util.cmo debug_syntax.cmo debug_knormal.cmo debug_closure.cmo

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
	make byte-code
	ocamlc -a $(FORLIB) -o mincaml_lib.cma

min-rt: 
	./sh/do_test.sh -c ./test/min-rt/min-rt-new -i 50
	../simulator/sim2 ./test/min-rt/min-rt-new.s -c < ./test/min-rt/sld/contest.sld > ./test/min-rt/sld/contest.ppm
	gnome-open ./test/min-rt/sld/contest.ppm

include OCamlMakefile
