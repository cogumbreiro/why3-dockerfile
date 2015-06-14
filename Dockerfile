FROM ubuntu:15.04
MAINTAINER Tiago Cogumbreiro

ENV WHY3_VER 0.86
ENV OPAMROOT /opam
ENV PATH $OPAMROOT/system/bin:$PATH

# Install base software
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        gcc \
        make \
        git \
        curl \
        ocaml \
        m4 \
        aspcud \
        opam \
        pkg-config \
        libgmp10 \
        libgmp-dev \
        libgtksourceview2.0 \
        libgtksourceview2.0-dev && \
    opam init -a && \
    opam install -y why3=$WHY3_VER && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get autoremove -y \
        libc6-dev \
        make \
        libgmp-dev \
        manpages-dev \
        gcc \
        make \
        git \
        curl \
        pkg-config \
        libgtksourceview2.0-dev \
        dbus
