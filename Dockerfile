FROM debian:latest
RUN apt-get update \
    && apt-get install -y software-properties-common gnupg
RUN apt-get update \
    && apt-get install -y git autogen autoconf automake bison dejagnu \
    flex libcurl4-gnutls-dev libgmp-dev libisl-dev libmpc-dev \
    libmpfr-dev make patch tzdata xz-utils binutils libc6-dev gcc-9 g++-9 \
    sudo curl \
    && rm -rf /var/lib/apt/lists/*
RUN env

