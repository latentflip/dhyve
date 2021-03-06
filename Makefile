PREFIX ?= /usr/local


all: xhyve/build/xhyve boot2docker-xhyve/uuid2ip/build/uuid2mac

install: all
	@install xhyve/build/xhyve $(PREFIX)/bin/
	@install boot2docker-xhyve/uuid2ip/build/uuid2mac $(PREFIX)/bin/
	@install dhyve $(PREFIX)/bin/

xhyve/build/xhyve:
	@$(MAKE) -C xhyve

boot2docker-xhyve/uuid2ip/build/uuid2mac:
	@$(MAKE) -C boot2docker-xhyve/uuid2ip

clean:
	@$(MAKE) clean -C xhyve
	@$(MAKE) clean -C boot2docker-xhyve/uuid2ip

.phony: clean
