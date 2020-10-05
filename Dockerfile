FROM debian:stable-slim as proxy-builder

WORKDIR /proxy/

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update -y -q && apt install -y -q g++ make libboost-all-dev dpkg-dev git

RUN git clone https://github.com/MengRao/TCP-UDP-Proxy.git .
RUN git config --global advice.detachedHead false
RUN git checkout 3c0ab60641886c48d223d408dcc81afa50b7a7be
RUN cd src && sed -i "s/\/usr\/local\/lib/\/usr\/lib\/x86_64-linux-gnu/" Makefile 
RUN cd src && make

FROM debian:stable-slim

LABEL maintainer="Max Henkel <mh@maxhenkel.de>"

ENV LOCAL_PORT=0
ENV REMOTE_PORT=0
ENV REMOTE_IP=127.0.0.1
ENV PROTOCOL=udp

WORKDIR /proxy/

COPY --from=proxy-builder /root/proxy_server .

ENTRYPOINT echo "$PROTOCOL $LOCAL_PORT $REMOTE_IP $REMOTE_PORT" >> proxy.conf && ./proxy_server
