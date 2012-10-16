RM = rm -rf

simulator: main.cpp sim.cpp encode.cpp
	g++ -g -Wall $^ -o $@

clean:
	$(RM) *.o
	$(RM) simulator

