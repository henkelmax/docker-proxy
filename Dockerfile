FROM debian:stable-slim

MAINTAINER Max Henkel <mh@maxhenkel.de>

WORKDIR /proxy/

EXPOSE 9987/udp 
EXPOSE 30033/tcp

COPY proxy_server /proxy/
COPY proxy.conf /proxy/

ENTRYPOINT ./proxy_server
