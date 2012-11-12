LEXER=Lexer.x
PARSER=Parser.y
SOURCES=Alpha.hs ArgHandle.hs Asm.hs Assoc.hs Beta.hs Closure.hs \
ConstFold.hs Elim.hs Emit.hs IdMod.hs Inline.hs KNormal.hs Main.hs \
RegAlloc.hs Simm.hs Syntax.hs Type.hs Typing.hs Virtual.hs ElimEqExp.hs \
GlobalEnv.hs

Main: ${SOURCES}
	ghc -O2 --make Main.hs
	make clean

lex_parse:  ${LEXER} ${PARSER}
	alex ${LEXER}
	happy ${PARSER}


clean:
	rm -rf *.hi *.o *.hs~

clean-main:
	rm -rf Main


min-rt: Main
	make Main
	./Main --file ./test/min-rt/utf-min-rt --iter 1000 --inline ${INLINE}
	../simulator/sim2 ./test/min-rt/utf-min-rt.s -c < ./test/min-rt/sld/contest.sld | tee ./test/min-rt/sld/contest.ppm
	gnome-open ./test/min-rt/sld/contest.ppm &
