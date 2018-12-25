FROM ubuntu:18.10

MAINTAINER thejunkjon

RUN apt clean && apt update && apt install -y radare2 python3 python-capstone && apt -y autoclean && apt -y autoremove && apt clean

RUN useradd -ms /bin/bash tools

USER tools
WORKDIR /home/tools

ENV TERM=xterm-256color
