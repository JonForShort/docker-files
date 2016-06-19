FROM thejunkjon/android-base:latest

MAINTAINER thejunkjon "thejunkjon@gmail.com"

# Setup Filter Environment
ENV ANDROID_ESSENTIALS_FILTER   tools,platform-tools,
ENV ANDROID_BUILD_TOOLS_FILTER  build-tools-23.0.3
ENV ANDROID_API_LEVELS_FILTER   android-23
ENV ANDROID_EXTRAS_FILTER       extra-android-support,extra-google-m2repository,extra-android-m2repository,extra-google-google_play_services
ENV ANDROID_HOME                /opt/android-sdk-linux

# Update Android SDK packages
RUN echo y | android update sdk --all --force --no-ui --filter ${ANDROID_ESSENTIALS_FILTER},${ANDROID_BUILD_TOOLS_FILTER},${ANDROID_API_LEVELS_FILTER},${ANDROID_EXTRAS_FILTER},addon-google_apis_x86-google-23,sys-img-x86-android-23
