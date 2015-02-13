FROM colstrom/ubuntu-standard

MAINTAINER chris@olstrom.com

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xb9316a7bc7917b12 \
    && echo 'deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu trusty main' >> /etc/apt/sources.list \
    && echo 'deb-src http://ppa.launchpad.net/chris-lea/node.js/ubuntu trusty main' >> /etc/apt/sources.list \
    && apt-get update

RUN apt-get install -y nodejs

RUN npm install sodium zmq
