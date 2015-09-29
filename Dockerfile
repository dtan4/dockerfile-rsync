FROM alpine:3.2
MAINTAINER dtan4

RUN apk update \
      && apk upgrade \
      && apk add rsync

WORKDIR /app
COPY rsyncd.conf /etc/

CMD ["rsync", "--daemon", "--no-detach"]
