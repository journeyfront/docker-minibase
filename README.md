minibase(8) -- alpine linux with dumb-init
==========================================

dumb-init(1) is installed to `/bin/` and is set as the entrypoint
for the container. minibase(8) doesn't do much on its own, but
provides a minimal, stable base to build upon.

## usage

```
FROM quay.io/journeyfront/minibase:0.1
# your Dockerfile
```
