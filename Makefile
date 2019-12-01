CC=	cc
CFLAGS=	-O2 -g -pipe -std=c89 -pedantic -Wall -Wextra
OBJS=	adpcm-lib.o adpcm-xq.o
ALL=	adpcm-xq
all: $(ALL)

adpcm-xq:	$(OBJS)
	$(CC) $(CFLAGS) -o adpcm-xq $(OBJS)

countline:
	wc -l *.c *.h Makefile

clean:
	rm -f $(OBJS) $(ALL)
