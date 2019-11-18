#DovieMakefile

CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=power.o basicMath.o
FLAGS= -Wall -g

all:mymaths mymathd mains maind main.o power.o basicMath.o


mains: $(OBJECTS_MAIN) libmyMath.a
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyMath.a

maind: $(OBJECTS_MAIN) libmyMath.so
	$(CC) $(FLAGS) $(OBJECTS_MAIN) ./libmyMath.so -o maind

main.o: main.c myMath.h
	$(CC) $(FLAGS) -c main.c

libmyMath.so:$(OBJECTS_LIB)
	$(CC) $(FLAGS) -shared $(OBJECTS_LIB) -o libmyMath.so
libmyMath.a: $(OBJECTS_LIB)
	$(AR) -rcs libmyMath.a $(OBJECTS_LIB)

power.o: power.c myMath.h
	$(CC) $(FLAGS) -c power.c
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c

.PHONY: clean all mymathd mymaths

mymathd:libmyMath.so

mymaths:libmyMath.a

clean:
	 rm -f *.o *.a *.so mains maind
