FROM debian:stable-slim

LABEL maintainer="Max Henkel <mh@maxhenkel.de>"

ENV LOCAL_PORT=0
ENV REMOTE_PORT=0
ENV REMOTE_IP=127.0.0.1
ENV PROTOCOL=udp

WORKDIR /proxy/

COPY proxy_server /proxy/

ENTRYPOINT echo "$PROTOCOL $LOCAL_PORT $REMOTE_IP $REMOTE_PORT" >> proxy.conf && ./proxy_server
