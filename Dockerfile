FROM maven:3.3.9-jdk-8

RUN addgroup --system --gid 10000 jenkins && \
    adduser --system jenkins --home /data/vservers/devtools/jenkins-workspace/ --no-create-home --uid 10000 --gid 10000 --gecos "" --disabled-password --disabled-login
