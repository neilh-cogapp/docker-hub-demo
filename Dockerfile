FROM ubuntu:latest

RUN apt-get update                             && \
    apt-get install -y --no-install-recommends    \
    ca-certificates                           \
    lynx                                   && \
    rm -rf /var/lib/apt/lists/*

ADD docker-entrypoint.sh /usr/local/docker-entrypoint.sh

RUN ["chmod", "+x", "/usr/local/docker-entrypoint.sh"]

ENTRYPOINT ["/usr/local/docker-entrypoint.sh"]