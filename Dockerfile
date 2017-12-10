FROM node:8.9.3

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY /package.json /usr/src/app
npm install
