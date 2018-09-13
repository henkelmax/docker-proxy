FROM debian:stable-slim

MAINTAINER Max Henkel <mh@maxhenkel.de>

ENV LOCAL_PORT=0
ENV REMOTE_PORT=0
ENV REMOTE_IP=127.0.0.1
ENV PROTOCOL=udp

WORKDIR /proxy/

# EXPOSE 9987/udp

COPY proxy_server /proxy/
# COPY proxy.conf /proxy/

ENTRYPOINT echo "$PROTOCOL $LOCAL_PORT $REMOTE_IP $REMOTE_PORT" >> proxy.conf && ./proxy_server
