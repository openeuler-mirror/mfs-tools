# Makefile for mfs demo

CFLAGS = -Wall -Wextra -I /usr/src/kernels/`uname -r`

PROGS := mfsd

all: $(PROGS)
%: %.c
	$(CC) $(CFLAGS) -o $@ $^

clean:
	$(RM) $(PROGS)
