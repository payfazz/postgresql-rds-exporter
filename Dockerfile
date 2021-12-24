FROM quay.io/prometheuscommunity/postgres-exporter:v0.10.0

USER root
RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends \
        git \
        && \
    apt-get clean && \
        rm -rf /var/lib/apt/lists/*