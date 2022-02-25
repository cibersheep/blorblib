# Pick a C compiler.
#CC = cc
#CC = arm-linux-gnueabihf-gcc -ansi

OPTIONS = -g -Wall

LIB = blorbscan

BLORBLIB_SRC = \
  blorblib.c blorbscan.c
  
BLORBLIB_OBJS = \
  blorblib.o blorbscan.o

BLORBLIB_HEADERS = \
  blorb.h blorblow.h

all: 
	$(CC) $(BLORBLIB_SRC) -o $(LIB) $(OPTIONS)

blorbscan.o: blorbscan.c

blorblib.o: blorblib.c

$(LIB): $(BLORBLIB_OBJS)

clean:
	rm -f *~ *.o $(LIB)
