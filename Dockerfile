FROM maven:3.6.3-jdk-11

RUN mkdir -p /build/ && \
    chown -R 111:65534 /build/ && \
    adduser --system jenkins --home /build/ --no-create-home --uid 111 --gid 65534 --gecos "" --disabled-password --disabled-login
