CC =		gcc
CFLAGS =	$(FLAGS) -D$(MACHTYPE) -c -I$(INCLUDEPATH)

OBJS =	triangle.o

all:	$(OBJS)
	mv *.o $(MACHTYPE)-$(OSTYPE)
.KEEP_STATE:
