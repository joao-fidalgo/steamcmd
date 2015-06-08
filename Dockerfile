FROM ubuntu:14.04

MAINTAINER João Fidalgo <joao.fidalgo@outlook.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install -y curl lib32gcc1

RUN mkdir -p /opt/steamcmd

WORKDIR /opt/steamcmd

RUN curl -s http://media.steampowered.com/installer/steamcmd_linux.tar.gz | tar -vxz

ENTRYPOINT ["./steamcmd.sh"]