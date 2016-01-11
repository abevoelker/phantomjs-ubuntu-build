FROM ubuntu:trusty

ADD multiverse.list /etc/apt/sources.list.d/

RUN apt-get update &&\
  DEBIAN_FRONTEND=noninteractive apt-get install -y \
  git build-essential g++ flex bison gperf ruby perl \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev ttf-mscorefonts-installer

RUN mkdir /data &&\
  cd /data &&\
  git clone --recurse-submodules git://github.com/ariya/phantomjs.git &&\
  cd phantomjs &&\
  git reset --hard 2ffe94b2fe8eadfe098862de829d7d0c3bb80429 &&\
  ./build.py &&\
  cp -a bin/phantomjs /usr/local/bin/

# Remove build dependencies, clean up APT and temp files
RUN apt-get clean &&\
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
