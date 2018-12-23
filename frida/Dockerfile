FROM ubuntu:18.10

MAINTAINER thejunkjon

ENV LANG="en_US.UTF-8"
ENV LANGUAGE="en_US.UTF-8"
ENV LC_ALL="en_US.UTF-8"

RUN apt clean && apt update && apt install -y apt-utils locales && locale-gen $LANG

ENV ANDROID_HOME="/opt/android-sdk"
ENV ANDROID_NDK="/opt/android-ndk"
ENV ANDROID_SDK_TOOLS_VERSION="4333796"
ENV ANDROID_NDK_VERSION="17b"
ENV ANDROID_SDK_HOME="$ANDROID_HOME"
ENV ANDROID_NDK_HOME="$ANDROID_NDK/android-ndk-r$ANDROID_NDK_VERSION"

ENV PATH="$PATH:${ANDROID_SDK_HOME}/emulator:${ANDROID_SDK_HOME}/tools/bin:${ANDROID_SDK_HOME}/tools:${ANDROID_SDK_HOME}/platform-tools:${ANDROID_NDK}"

RUN apt install -y wget unzip

ARG ANDROID_SDK_DOWNLOAD_URL="https://dl.google.com/android/repository/sdk-tools-linux-${ANDROID_SDK_TOOLS_VERSION}.zip"

RUN wget -q --output-document=sdk-tools.zip ${ANDROID_SDK_DOWNLOAD_URL} && \
    mkdir -p ${ANDROID_HOME} && \
    unzip -q sdk-tools.zip -d ${ANDROID_HOME} && \
    rm -rf sdk-tools.zip

ARG ANDROID_NDK_DOWNLOAD_URL="http://dl.google.com/android/repository/android-ndk-r${ANDROID_NDK_VERSION}-linux-x86_64.zip"

RUN wget -q --output-document=android-ndk.zip ${ANDROID_NDK_DOWNLOAD_URL} && \
    mkdir -p ${ANDROID_NDK_HOME} && \
    unzip -q android-ndk.zip -d ${ANDROID_NDK} && \
    rm -rf android-ndk.zip

RUN apt install -y clang build-essential git npm && apt -y autoclean && apt -y autoremove && apt clean

RUN apt install -y libtinfo5 python3

RUN useradd -ms /bin/bash frida 

USER frida
WORKDIR /home/frida

ENV TERM=xterm-256color
ENV ANDROID_NDK_ROOT=${ANDROID_NDK_HOME}
