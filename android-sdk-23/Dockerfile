FROM thejunkjon/android-base:latest

MAINTAINER thejunkjon "thejunkjon@gmail.com"

# Setup Environment
ENV ANDROID_HOME                /opt/android-sdk-linux
ENV PATH                        ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

# Setup Filter Environment
ENV ANDROID_ESSENTIALS_FILTER   platform-tools
ENV ANDROID_BUILD_TOOLS_FILTER  build-tools-23.0.3
ENV ANDROID_API_LEVELS_FILTER   android-23
ENV ANDROID_EXTRAS_FILTER       extra-android-support,extra-google-m2repository,extra-android-m2repository,extra-google-google_play_services,addon-google_apis_x86-google-23
ENV ANDROID_IMAGES_FILTER       sys-img-x86-android-23

# Update Android SDK packages
RUN echo y | android update sdk --all --force --no-ui --filter ${ANDROID_ESSENTIALS_FILTER}
RUN echo y | android update sdk --all --force --no-ui --filter ${ANDROID_BUILD_TOOLS_FILTER}
RUN echo y | android update sdk --all --force --no-ui --filter ${ANDROID_API_LEVELS_FILTER}
RUN echo y | android update sdk --all --force --no-ui --filter ${ANDROID_EXTRAS_FILTER}
RUN echo y | android update sdk --all --force --no-ui --filter ${ANDROID_IMAGES_FILTER}



