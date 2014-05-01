# MACROS

SRCPATH		= ./src
INCPATH		= ./include
OBJPATH		= ./obj
INSTPATH	= ./bin
CC		= g++
CFLAGS		= -g -Wall -I$(INCPATH)


# TARGETS

all: getobj app putobj

app: main.o Talker.o
		$(CC) $(CFLAGS) -o $(INSTPATH)/app main.o Talker.o

main.o: $(SRCPATH)/main.cpp $(INCPATH)/Talker.h
	$(CC) $(CFLAGS) -c $(SRCPATH)/main.cpp

Talker.o: $(SRCPATH)/Talker.cpp $(INCPATH)/Talker.h
	$(CC) $(CFLAGS) -c $(SRCPATH)/Talker.cpp

getobj:
	-mv $(OBJPATH)/*.o .

putobj:
	-mv *.o $(OBJPATH)

clean:
	-rm -f app
	-rm -f $(OBJPATH)/*.o
	-rm -f bin/*
