FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        bash \
        ca-certificates \
        curl \
        dnsutils \
        findutils \
        gawk \
        git \
        grep \
        iproute2 \
        iputils-ping \
        jq \
        less \
        netcat-openbsd \
        procps \
        sed \
        tcpdump \
        traceroute \
        vim-tiny \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
CMD ["sleep", "infinity"]
