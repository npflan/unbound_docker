FROM alpine:latest
MAINTAINER Safelink Internet

RUN apk --update add unbound wget bash

ADD assets/unbound.conf /etc/unbound/unbound.conf

RUN wget ftp://FTP.INTERNIC.NET/domain/named.cache -O /etc/unbound/root.hints

RUN unbound-anchor -v -a "/etc/unbound/root.key"; exit 0

RUN chown -R unbound:unbound /etc/unbound

ADD start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 53/udp
EXPOSE 53

CMD ["/start.sh"]
