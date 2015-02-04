FROM ubuntu:14.04
MAINTAINER Daan van Berkel <daan.v.berkel.1980@gmail.com>

RUN apt-get -y update && apt-get -y install \
    git \
    nodejs \
    npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install --global yo \
    grunt-cli \
    bower \
    generator-reveal

RUN mkdir /presentation
WORKDIR /presentation

EXPOSE 9000
