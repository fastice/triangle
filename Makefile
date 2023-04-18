CC =		gcc

MEM = '-m32'
ifeq ($(OSTYPE), darwin)
	MEM = ''
endif

CFLAGS =	-DTRILIBRARY $(MEM) $(FLAGS) -D$(MACHTYPE) -c -I$(INCLUDEPATH)

OBJS =	triangle.o

all:	$(OBJS)
	mv *.o $(MACHTYPE)-$(OSTYPE)
.KEEP_STATE:
