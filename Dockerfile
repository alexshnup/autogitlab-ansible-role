FROM docker:24.0.2-dind

RUN apk add --no-cache \
    bash \
    curl \
    git \
    jq \
    make \
    openssh-client \
    python3 \
    py3-pip \
    py3-setuptools \
    py3-wheel \
    rsync \
    tar \
    unzip \
    wget \
    zip

RUN pip3 install --no-cache-dir \
    requests \
    yq
