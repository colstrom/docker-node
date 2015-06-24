FROM colstrom/ubuntu-standard

MAINTAINER chris@olstrom.com

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xb9316a7bc7917b12 \
    && echo 'deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu trusty main' >> /etc/apt/sources.list \
    && echo 'deb-src http://ppa.launchpad.net/chris-lea/node.js/ubuntu trusty main' >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get -y install nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get -y install python make gcc g++ \
    && npm install -g sodium zmq \
    && apt-get -y remove --purge \
       binutils cpp cpp-4.8 g++ g++-4.8 gcc gcc-4.8 libasan0 libatomic1 \
       libc-dev-bin libc6-dev libcloog-isl4 libgcc-4.8-dev libgmp10 libgomp1 \
       libisl10 libitm1 libmpc3 libmpfr4 libpython-stdlib libpython2.7-minimal \
       libpython2.7-stdlib libquadmath0 libstdc++-4.8-dev libtsan0 linux-libc-dev \
       make manpages manpages-dev python python-minimal python2.7 python2.7-minimal \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
