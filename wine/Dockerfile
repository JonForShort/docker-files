FROM ubuntu:18.10

MAINTAINER thejunkjon "thejunkjon@gmail.com"

RUN apt-get update -qq && \
    apt-get install -y software-properties-common && \
    dpkg --add-architecture i386 && \
    add-apt-repository ppa:wine/wine-builds && \
    apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install -y --install-recommends winehq-devel && \
    apt-get install -y --install-recommends xauth && \
    apt-get install -y --install-recommends openssh-server

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
