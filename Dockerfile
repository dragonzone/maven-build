FROM maven:3.3.9-jdk-8

RUN apt-get update && \
    apt-get install -y docker

RUN addgroup --system --gid 10000 jenkins && \
    mkdir -p /data/vservers/devtools/jenkins-workspace/ && \
    chown -R 10000:10000 /data/vservers/devtools/jenkins-workspace && \
    adduser --system jenkins --home /data/vservers/devtools/jenkins-workspace/ --no-create-home --uid 10000 --gid 10000 --gecos "" --disabled-password --disabled-login
