# Galaxy - requirements according to https://wiki.galaxyproject.org/Admin/Config/ToolDependenciesList
#
# VERSION   2015.1

FROM ubuntu:14.04

MAINTAINER Björn A. Grüning, Dave Bouvier

ENV DEBIAN_FRONTEND noninteractive

RUN add-apt-repository ppa:fkrull/deadsnakes

RUN apt-get -qq update && apt-get install --no-install-recommends -y \
    autoconf automake build-essential gfortran cmake \
    git-core libatlas-base-dev libblas-dev liblapack-dev mercurial \
    openjdk-7-jre-headless python-dev python2.6 python2.6-dev \
    python-setuptools python-virtualenv zlib1g-dev libyaml-dev \
    subversion pkg-config && apt-get autoremove -y && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

