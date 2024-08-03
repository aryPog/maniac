include config.mk

SRCS = $(SRCDIR)/main.c
OBJS = $(SRCS:.c=.o)

.PHONY: all clean

all: maniac

clean-all: all
	rm -rf $(SRCDIR)/*.o $(SRCDIR)/*.d

maniac: $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)

clean:
	rm -rf maniac $(SRCDIR)/*.o $(SRCDIR)/*.d
