FROM maven:3.9.2-eclipse-temurin-11-focal

RUN apt install gnupg && \
    mkdir -p /build/ && \
    chown -R 111:65534 /build/ && \
    adduser --system jenkins --home /build/ --no-create-home --uid 111 --gid 65534 --gecos "" --disabled-password --disabled-login
