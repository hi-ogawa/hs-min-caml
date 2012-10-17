RM = rm -rf

sim1: main.cpp sim.cpp encode.cpp
	g++ -g -Wall $^ -o $@

sim2: main.cpp sim2.cpp
	g++ -g -Wall $^ -o $@

clean:
	$(RM) *.o
	$(RM) simulator

