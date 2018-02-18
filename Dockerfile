FROM maven:3.5.2-jdk-8

RUN mkdir -p /var/lib/jenkins/ && \
    chown -R 111:65534 /var/lib/jenkins/ && \
    adduser --system jenkins --home /var/lib/jenkins/ --no-create-home --uid 10000 --gid 10000 --gecos "" --disabled-password --disabled-login
