FROM gliderlabs/alpine:3.4
MAINTAINER Carlos Killpack <carlos@killpack.me>
WORKDIR /tmp
COPY Makefile ./Makefile
RUN apk --update add make && make
ENTRYPOINT ["/bin/dumb-init"]
