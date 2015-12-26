FROM ubuntu:15.10

MAINTAINER thejunkjon "thejunkjon@gmail.com"

RUN apt-get update -qq

RUN apt-get install -y software-properties-common

RUN dpkg --add-architecture i386

RUN add-apt-repository ppa:wine/wine-builds

RUN apt-get update -qq

RUN apt-get upgrade -y

RUN apt-get install -y --install-recommends winehq-devel

RUN apt-get install -y --install-recommends xauth

RUN apt-get install -y --install-recommends openssh-server

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]