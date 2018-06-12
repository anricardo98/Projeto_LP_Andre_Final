#Makefile for "sapo_corrida" C++ application
#Created by Andre 04/06/2018

PROG = bin/sapo_corrida
CC = g++
CPPFLAGS = -O0 -g -W -Wall -pedantic -std=c++11
OBJS = main.o sapo.o pista.o corrida.o 

$(PROG): $(OBJS)
	$(CC) $(OBJS) -o $(PROG)
	mv *.o build/

main.o:
	$(CC) $(CPPFLAGS) -c src/main.cpp

sapo.o: include/sapo.hpp
	$(CC) $(CPPFLAGS) -c src/sapo.cpp

pista.o: include/pista.hpp
	$(CC) $(CPPFLAGS) -c src/pista.cpp

corrida.o: include/corrida.hpp
	$(CC) $(CPPFLAGS) -c src/corrida.cpp

clean:
	rm -f $(PROG) build/*.o
