CC =		gcc

CFLAGS =	-DTRILIBRARY $(MEM) $(FLAGS) -c -I$(INCLUDEPATH)

OBJS =	triangle.o

MACHTYPE = $(shell uname -m)
OSTYPE = $(shelf uname -s)

$(shell mkdir -p $(MACHTYPE)-$(OSTYPE))

all:	$(OBJS)
	mv *.o $(MACHTYPE)-$(OSTYPE)
.KEEP_STATE:
