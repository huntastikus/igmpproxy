FROM alpine:latest

RUN apk update && \
    apk add --no-cache \
    igmpproxy \
    iputils \
    busybox-extras \
    traceroute \
    net-tools \
    tcpdump

RUN mkdir /tcpdump

WORKDIR /etc/igmpproxy

COPY igmpproxy.conf /templates/igmpproxy.conf.template
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
#ENTRYPOINT ["sleep", "infinity"]
