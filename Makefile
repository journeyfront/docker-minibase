# minibase

DUMB_INIT_VERSION ?= 1.1.0

all: get-deps build install clean

get-deps:
	apk --update add --virtual build-dependencies build-base git python bash

build:
	git clone https://github.com/Yelp/dumb-init.git
	cd dumb-init && git checkout tags/v$(DUMB_INIT_VERSION) && make

install:
	mv dumb-init/dumb-init /bin/dumb-init

clean:
	apk del build-dependencies make
	rm -rf /var/cache/apk/*
	rm -rf dumb-init Makefile

.PHONY: clean all
