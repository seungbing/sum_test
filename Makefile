all: sum

sum: main.o sum.o
	g++ -o sum main.o sum.o

sum.o: sum.h sum.cpp
	g++ -c -o sum.o sum.cpp
main.o: sum.h main.cpp
	g++ -c -o main.o main.cpp
clean:
	rm -f sum_test
	rm -f *.o

