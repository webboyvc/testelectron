FROM node:8.9.3

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY /package.json /usr/src/app


RUN apt-get -qq update \
&& DEBIAN_FRONTEND=noninteractive apt-get -y install \
        unixodbc \
        unixodbc-dev \
        && apt-get clean
RUN npm install ffi
RUN npm install
