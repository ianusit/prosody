FROM alpine:3.4

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/main/ libressl2.4-libcrypto &&\
    apk add --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ prosody
    
COPY files/start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]
