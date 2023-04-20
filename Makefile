CC =		gcc

CFLAGS =	-DTRILIBRARY $(MEM) $(FLAGS) -D$(MACHTYPE) -c -I$(INCLUDEPATH)

OBJS =	triangle.o

$(shell mkdir -p $(MACHTYPE)-$(OSTYPE))

all:	$(OBJS)
	mv *.o $(MACHTYPE)-$(OSTYPE)
.KEEP_STATE:
