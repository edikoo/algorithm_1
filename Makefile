#
#
#
CC=gcc
CFLAGS=-Wall -o2
 
 
all : davaleba_2-1
.PHONY : all
 
davaleba_2-1 : davaleba_2-1.o
	$(CC) $(CFLAGS) -o davaleba_2-1 davaleba_2-1.o
 
davaleba_2-1.o : davaleba_2-1.c
	$(CC) -Wall -c -o davaleba_2-1.o davaleba_2-1.c
   
   
debug:clean davaleba_2-1.c
	$(CC) -Wall -g -o test davaleba_2-1.c
	gdb -tui  test
 
   
   
.PHONY: clean
clean :
	rm -rf *.o test
