FROM debian:latest
RUN apt-get update
# Install dependencies for add-apt-repository
RUN apt-get install -y software-properties-common gnupg
# Add ppa from Ubuntu Bionic; add-apt-repository seems to add a ppa for the
# current Ubuntu version, groovy at the time of this commit, which doesn't
# provide a Release file.
RUN add-apt-repository -y 'deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu bionic main'
RUN apt-get update
# Install dependencies for building GDC
RUN apt-get install -y git autogen autoconf automake bison dejagnu \
    flex libcurl4-gnutls-dev libgmp-dev libisl-dev libmpc-dev \
    libmpfr-dev make patch tzdata xz-utils binutils libc6-dev \
    sudo curl \
RUN rm -rf /var/lib/apt/lists/*
RUN env

