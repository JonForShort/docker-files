FROM thejunkjon:android-base

MAINTAINER thejunkjon "thejunkjon@gmail.com"

# Setup Filter Environment
ENV ANDROID_ESSENTIALS_FILTER   platform-tools,tools
ENV ANDROID_BUILD_TOOLS_FILTER  build-tools-23.0.3
ENV ANDROID_SDK_FILTER          android-23
ENV ANDROID_EXTRAS_FILTER       extra-android-support,extra-google-m2repository,extra-android-m2repository,extra-google-google_play_services

# Update Android SDK packages
RUN cd /opt &&\
    wget -q ${ANDROID_SDK_URL} &&\
    tar -xzf ${ANDROID_SDK_FILENAME} &&\
    rm ${ANDROID_SDK_FILENAME} &&\
    echo y | android update sdk --all --force --no-ui --filter ${ANDROID_ESSENTIALS_FILTER},${ANDROID_BUILD_TOOLS_FILTER},${ANDROID_SDK_FILTER},${ANDROID_EXTRAS_FILTER},addon-google_apis_x86-google-23,sys-img-x86-android-23
    
# Clean up
RUN apt-get -y autoremove
RUN apt-get -y autoclean