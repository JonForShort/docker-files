FROM ubuntu:15.10

MAINTAINER thejunkjon "thejunkjon@gmail.com"

# Update image
RUN apt-get update

# Install java8
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer

# Install Dependencies
RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y --force-yes expect git wget libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1 python curl

# Setup Environment
ENV ANDROID_SDK_VERSION                 r24.4.1
ENV ANDROID_SDK_FILENAME                android-sdk_${ANDROID_SDK_VERSION}-linux.tgz
ENV ANDROID_SDK_URL                     http://dl.google.com/android/${ANDROID_SDK_FILENAME}
ENV ANDROID_HOME                        /opt/android-sdk-linux
ENV PATH                                ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

# Install Android SDK
RUN cd /opt && wget --output-document=android-sdk.tgz --quiet ${ANDROID_SDK_URL} && tar xzf android-sdk.tgz && rm -f android-sdk.tgz && chown -R root.root android-sdk-linux

# Clean up
RUN apt-get -y autoremove
RUN apt-get -y autoclean