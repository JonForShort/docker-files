FROM debian:buster-slim

MAINTAINER thejunkjon

RUN apt-get update && \
    apt-get -y install qtbase5-dev libxcb-xinerama0-dev build-essential python wget tmux zip emacs qtcreator && \
    apt-get -y autoclean && \
    apt-get -y autoremove && \
    apt-get -y clean

RUN useradd -G video -ms /bin/bash qt

USER qt

WORKDIR /home/qt

ENV TERM=xterm-256color
ENV LANG="en_US.UTF-8"
ENV LANGUAGE="en_US.UTF-8"
ENV LC_ALL="en_US.UTF-8"
