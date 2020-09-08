FROM debian:jessie
COPY . Makefile
WORKDIR /data/gccci/docker/
RUN apt-get update \
    && apt-get install -y git autogen autoconf automake bison dejagnu \
    flex libcurl4-gnutls-dev libgmp-dev libisl-dev libmpc-dev \
    libmpfr-dev make patch tzdata xz-utils binutils libc6-dev gcc g++ \
    && rm -rf /var/lib/apt/lists/*
RUN env

