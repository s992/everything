FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y pkg-config
RUN apt-get install -y zip
RUN apt-get install -y g++
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y unzip
RUN apt-get install -y python
RUN apt-get install -y curl

RUN curl -fLo /tmp/bazel.sh https://github.com/bazelbuild/bazel/releases/download/0.18.0/bazel-0.18.0-installer-linux-x86_64.sh
RUN chmod +x /tmp/bazel.sh
RUN /tmp/bazel.sh --user

ENV PATH="/root/bin:${PATH}"

WORKDIR /everything
COPY bazel /everything/bazel
COPY note /everything/note
COPY scripts /everything/scripts
COPY tasky /everything/tasky
COPY third_party /everything/third_party
COPY WORKSPACE /everything/WORKSPACE

RUN bazel build //...
