SOURCES=Alpha.hs ArgHandle.hs Asm.hs Assoc.hs Beta.hs Closure.hs \
ConstFold.hs Elim.hs Emit.hs IdMod.hs Inline.hs KNormal.hs Main.hs \
RegAlloc.hs Simm.hs Syntax.hs Type.hs Typing.hs Virtual.hs ElimEqExp.hs \
GlobalEnv.hs ElimJump.hs

Main: ${SOURCES} Lexer.hs Parser.hs
	ghc -O2 -XTupleSections -XBangPatterns -cpp --make Main.hs

Lexer.hs: Lexer.x
	alex Lexer.x -o Lexer__.hs
	sed -e "s/ignorePendingBytes (p,c,ps,s) = (p,c,s)/ignorePendingBytes (p,c,ps,s) = (p,c,ps,s)/" \
	    -e "s/AlexError inp' -> alexError \"lexical error\"/AlexError (pos,_,_,_) -> alexError (\"ERROR: lexical error\"++(showPosn pos))/" \
	    Lexer__.hs > Lexer.hs
	rm Lexer__.hs

Parser.hs: Parser.y
	happy Parser.y

clean-hi-o:
	rm -rf *.hi *.o *.hs~


min-rt: Main
	./Main --file ./test/min-rt/utf-min-rt --iter 1000 --inline ${INLINE}
	../simulator/sim2 ./test/min-rt/utf-min-rt.s -c < ./test/min-rt/sld/contest.sld > ./test/min-rt/sld/contest.ppm
	gnome-open ./test/min-rt/sld/contest.ppm &

sim:
	cd ../simulator; make

clean:
	make clean-hi-o
	rm -rf Main Lexer.hs Parser.hs
	cd ../simulator; make clean
