FROM ubuntu:latest as builder

ENV HUGO_VERSION 0.68.3
ENV HUGO_BINARY hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz

# Install Hugo and other deps
RUN set -e && \
  apt update && apt install -y wget ca-certificates git && \
  wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} && \
  tar xzf ${HUGO_BINARY} && \
  rm -r ${HUGO_BINARY} && \
  mv hugo /usr/bin

FROM ubuntu:latest as build
WORKDIR /public
COPY ./ .
RUN /usr/bin/hugo --gc --minify --enableGitInfo