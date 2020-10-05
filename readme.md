# TCP/UDP Proxy Dockerized ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/henkelmax/docker-proxy/Build) ![GitHub issues](https://img.shields.io/github/issues-raw/henkelmax/docker-proxy) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/henkelmax/docker-proxy?include_prereleases) ![](https://img.shields.io/docker/pulls/henkelmax/proxy)

A simple Docker container that forwards incoming TCP or UDP traffic to a specific IP.

> This container uses [MengRao/TCP-UDP-Proxy](https://github.com/MengRao/TCP-UDP-Proxy).

## Useful Links

- [Docker Image](https://hub.docker.com/r/henkelmax/proxy)
- [Proxy](https://github.com/MengRao/TCP-UDP-Proxy)

## Environment Variables

`LOCAL_PORT` The local port where the incoming packets arrive at

`REMOTE_PORT` The port the proxy sends the packets to

`REMOTE_IP` The IP the proxy sends the packets to

`PROTOCOL` The Protocol (Either `udp` or `tcp`)

## Example

```sh
docker run -e LOCAL_PORT=10000 -e REMOTE_PORT=10000 -e REMOTE_IP=127.0.0.1 -e PROTOCOL=udp henkelmax/proxy
```
