FROM ubuntu:22.04

RUN apt-get update \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*

COPY bin/postgres_exporter /bin/postgres_exporter

EXPOSE 9187
USER nobody