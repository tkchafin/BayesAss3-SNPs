all : BA3-SNPS

indiv.o : indiv.h indiv.cpp
	g++ -static -O3 -Wall -c indiv.cpp

main.o : main.cpp indiv.h BA3.h
	g++ -static -O3 -Wall -c main.cpp

BA3-SNPS : main.o indiv.o
	g++ -static -O3 -Wall -o BA3-SNPS indiv.o main.o -lboost_program_options -lgsl -lgslcblas

clean :
	rm *.o BA3-SNPS
