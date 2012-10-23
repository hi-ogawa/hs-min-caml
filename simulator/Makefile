RM = rm -rf

sim2: main.cpp sim2.cpp encode.cpp
	g++ -O2 -Wall $^ -o $@
sim1: main.cpp sim.cpp encode.cpp
	g++ -O2 -Wall $^ -o $@


clean:
	$(RM) *.o
	$(RM) sim1 sim2

