FROM ubuntu:14.04
MAINTAINER Daan van Berkel <daan.v.berkel.1980@gmail.com>

RUN apt-get -y update && apt-get -y install \
    git
