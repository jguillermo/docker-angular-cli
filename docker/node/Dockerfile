FROM node:6.12.3

MAINTAINER Jose Guillermo <jguillermo@outlook.com>

ENV VERSION 1.0

ENV SRC_DIR=/usr/src

RUN npm install --global gulp-cli@2.0.0 && \
    npm install --global typescript@2.6.2 && \
    npm install --global @angular/cli@1.6.3 && \
    npm cache clean && \
    mkdir -p $SRC_DIR && chmod 777 -R $SRC_DIR && \
    mkdir /nodecache && chmod 777 -R /nodecache && npm config set cache /nodecache --global

WORKDIR $SRC_DIR
