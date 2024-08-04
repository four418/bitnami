FROM bitnami/git:2.46.0-debian-12-r0

ENV YQ_VERSION=v4.44.2

USER root

RUN apt-get update && \
    apt-get install -y curl

RUN curl -LO https://github.com/mikefarah/yq/releases/download/$YQ_VERSION/yq_linux_amd64 \
    && chmod +x yq_linux_amd64 \
    && mv yq_linux_amd64 /usr/local/bin/yq
