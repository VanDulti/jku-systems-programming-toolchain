# can be used to compile manually within the container or as a clion toolchain to develop seemlessly in clion,
# even on non-linux non-x86 hosts (e.g. arm machines such as apple silicon macs) - removing the hustle of system
# & compiler dependent behaviour.
#
# derived from https://github.com/JetBrains/clion-remote/blob/master/Dockerfile.cpp-env-ubuntu

# Build and run:
#   docker build -t systems-programming-toolchain:latest .

FROM --platform=linux/amd64 ubuntu:22.04

RUN DEBIAN_FRONTEND="noninteractive" apt-get update && apt-get -y install tzdata

RUN apt-get update \
  && apt-get install -y build-essential \
      gcc \
      g++ \
      gdb \
      clang \
      make \
      ninja-build \
      cmake \
      autoconf \
      automake \
      libtool \
      valgrind \
      locales-all \
      dos2unix \
      rsync \
      tar \
      python3 \
      python3-dev \
  && apt-get clean