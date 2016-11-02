FROM alpine:3.4

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add libcrypto1.0 &&\
    apk add --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ prosody
