# Teamspeak/UDP Proxy

## Installation with Docker

### Image Name

    hub.maxhenkel.de/teamspeak-proxy

### Environment Variables

`LOCAL_PORT` The local port where the incoming packets come to

`REMOTE_PORT` The port the proxy sends the packets to

`REMOTE_IP` The IP the proxy sends the packets to

#### Example
    
    127.0.0.1

`PROTOCOL` The Protocol (Either `udp` or `tcp`)

`PORT` The port the WebHook Server should run on


[//]: # ( Proxy Repository https://github.com/MengRao/TCP-UDP-Proxy )
[//]: # ( Install libboost sudo apt-get install libboost-all-dev )
[//]: # ( Libboost path /usr/lib/x86_64-linux-gnu/ [libboost] )