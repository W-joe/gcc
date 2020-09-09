FROM debian:latest
RUN apt-get update
RUN apt-get install -y software-properties-common gnupg
RUN add-apt-repository -y 'deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu bionic main'
RUN apt-get update
RUN apt-get install -y git autogen autoconf automake bison dejagnu \
    flex libcurl4-gnutls-dev libgmp-dev libisl-dev libmpc-dev \
    libmpfr-dev make patch tzdata xz-utils binutils libc6-dev \
    sudo curl \
RUN rm -rf /var/lib/apt/lists/*
RUN env

