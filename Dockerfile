FROM ubuntu:jammy as build

RUN apt-get update && \
    apt-get install -y \
        binutils-mips-linux-gnu \
        bsdmainutils \
        build-essential \
        libcapstone-dev \
        pkgconf \
        python3 \
        libz-dev

RUN mkdir /sm64
WORKDIR /sm64
ENV PATH="/sm64/tools:${PATH}"

# docker build -t sm64ex-coop .
# docker run --rm --mount type=bind,source="$(pwd)",destination=/sm64 sm64ex-coop make -j HEADLESS=1 
# see https://github.com/n64decomp/sm64/blob/master/README.md for advanced usage
