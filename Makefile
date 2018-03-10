CC ?= gcc
DESTDIR ?= /usr/local

all: tb-tun.c
	$(CC) -O3 -l pthread -o tb-tun tb-tun.c

install: tb-tun
	install -d $(DESTDIR)/bin/
	install tb-tun $(DESTDIR)/bin/

uninstall:
	rm -f $(DESTDIR)/bin/tb-tun

clean:
	rm -f tb-tun
