CC ?= gcc
DESTDIR ?= /usr/local
SRC ?= src/tb-tun.c
BIN ?= tb-tun

all: $(SRC)
	$(CC) -O3 -l pthread -o $(BIN) $(SRC)

install: $(BIN)
	install -d $(DESTDIR)/bin/
	install $(BIN) $(DESTDIR)/bin/

uninstall:
	rm -f $(DESTDIR)/bin/$(BIN)

clean:
	rm -f $(BIN)
