FROM ubuntu:14.04
MAINTAINER Daan van Berkel <daan.v.berkel.1980@gmail.com>

RUN groupadd reveal && useradd -g reveal -d /home/reveal reveal && mkdir -p /home/reveal && chown -R reveal:reveal /home/reveal

RUN apt-get -y update && apt-get -y install \
    git \
    nodejs \
    npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install --global yo \
    grunt-cli \
    bower \
    generator-reveal

RUN mkdir /presentation && chown -R reveal:reveal /presentation
WORKDIR /presentation

USER reveal

RUN yo --no-insight --version && bower --no-insight --version

EXPOSE 9000
EXPOSE 35729
