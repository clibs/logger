
CC ?= gcc
DEPS = $(wildcard deps/*/*.c)
OBJS = $(DEPS:.c=.o)
CFLAGS = -std=c99 -Wall -Wextra -Isrc -Ideps

example: example.c $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

%.o: %.c
	$(CC) $< -c -o $@ $(CFLAGS)

clean:
	rm -f example $(OBJS)

.PHONY: clean
