FROM ubuntu:15.10

MAINTAINER thejunkjon "thejunkjon@gmail.com"

RUN apt-get update -qq
RUN apt-get upgrade -y
RUN apt-get install -y --no-install-recommends openjdk-8-jdk

ENV ANDROID_SDK_VERSION 24.4.1

RUN apt-get install -y --no-install-recommends wget
RUN cd /opt && wget -q http://dl.google.com/android/android-sdk_r$ANDROID_SDK_VERSION-linux.tgz
RUN cd /opt && tar xzf android-sdk_r$ANDROID_SDK_VERSION-linux.tgz
RUN cd /opt && rm -f android-sdk_r$ANDROID_SDK_VERSION-linux.tgz

ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools
RUN echo y | android update sdk --filter platform-tools,build-tools-23.0.2,android-23,extra-android-support --no-ui --force

RUN apt-get install -y --no-install-recommends git

RUN apt-get autoclean
RUN apt-get autoremove
