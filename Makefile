all: graph_generator

CC = g++
CFLAG = -std=c++11 -O3

graph_generator: src/main.cpp src/graph/graph.cpp src/module/design.cpp src/module/abstract.cpp src/module/concrete.cpp src/module/design.h src/graph/graph.h src/module/concrete.h src/module/abstract.h
	$(CC) $(CFLAG) src/main.cpp src/graph/graph.cpp src/module/design.cpp src/module/abstract.cpp src/module/concrete.cpp -o build/graph_generator

clean:
	rm build/graph_generator