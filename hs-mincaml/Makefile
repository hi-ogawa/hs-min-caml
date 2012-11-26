SOURCES=Alpha.hs ArgHandle.hs Asm.hs Assoc.hs Beta.hs Closure.hs \
ConstFold.hs Elim.hs Emit.hs IdMod.hs Inline.hs KNormal.hs Main.hs \
RegAlloc.hs Simm.hs Syntax.hs Type.hs Typing.hs Virtual.hs ElimEqExp.hs \
GlobalEnv.hs ElimJump.hs

Main: ${SOURCES} Lexer.x Parser.y
	make lex-parse
	ghc -O2 -XTupleSections -XBangPatterns --make Main.hs
	make clean-hi-o

lex-parse:
	alex Lexer.x -o Lexer__.hs
	sed -e "s/ignorePendingBytes (p,c,ps,s) = (p,c,s)/ignorePendingBytes (p,c,ps,s) = (p,c,ps,s)/" \
	    -e "s/AlexError inp' -> alexError \"lexical error\"/AlexError (pos,_,_,_) -> alexError (\"ERROR: lexical error\"++(showPosn pos))/" \
	    Lexer__.hs > Lexer.hs
	rm Lexer__.hs
	happy Parser.y

clean-hi-o:
	rm -rf *.hi *.o *.hs~


min-rt: Main
	./Main --file ./test/min-rt/utf-min-rt --iter 1000 --inline ${INLINE}
	../simulator/sim2 ./test/min-rt/utf-min-rt.s -c < ./test/min-rt/sld/contest.sld | tee ./test/min-rt/sld/contest.ppm
	gnome-open ./test/min-rt/sld/contest.ppm &

sim:
	cd ../simulator; make

clean:
	rm -rf Main
	cd ../simulator; make clean
