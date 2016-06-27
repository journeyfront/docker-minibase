# minibase

DUMB_INIT_VERSION ?= 1.1.0

all: install clean

install:
	apk --update add --virtual build-dependencies build-base git python bash
	git clone https://github.com/Yelp/dumb-init.git
	cd dumb-init && git checkout tags/v$(DUMB_INIT_VERSION) && make
	mv dumb-init/dumb-init /bin/dumb-init

clean:
	apk del build-dependencies
	rm -rf /var/cache/apk/*
	rm -rf dumb-init Makefile

.PHONY: clean
