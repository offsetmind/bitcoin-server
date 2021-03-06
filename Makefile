# Jack Kaloger 758278
# Makefile For COMP30023 Project 1 2017

## CC  = Compiler.
## CFLAGS = Compiler flags.
CC	= gcc
CFLAGS =	-Wall -Wextra -pedantic -std=c99 -g -lpthread


## OBJ = Object files.
## SRC = Source files.
## EXE = Executable name.

SRC =		main.c sha256.c server.c queue.c
OBJ =		main.o sha256.o server.o queue.o
EXE = 		server

## Top level target is executable.
$(EXE):	$(OBJ)
		$(CC) $(CFLAGS) -o $(EXE) $(OBJ) -lm


## Clean: Remove object files and core dump files.
clean:
		/bin/rm $(OBJ) 

## Clobber: Performs Clean and removes executable file.

clobber: clean
		/bin/rm $(EXE) 

## Dependencies
main.o: sha256.h uint256.h server.h
server.o: queue.h server.h sha256.h uint256.h
queue.o: queue.h
