FROM alpine:latest

RUN apk update && \
    apk add --no-cache \
    igmpproxy \
    iputils \
    busybox-extras \
    traceroute \
    net-tools \
    tcpdump

CMD mkdir /tcpdump

WORKDIR /etc/igmpproxy

COPY igmpproxy.conf /etc/igmpproxy/igmpproxy.conf

ENTRYPOINT ["igmpproxy", "/etc/igmpproxy/igmpproxy.conf"]
