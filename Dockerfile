ARG NODE_VERSION=22.14-bullseye
FROM node:${NODE_VERSION}

RUN apt-get update \
  && apt-get install -y --no-install-recommends openjdk-11-jre unzip \
  && curl -sS "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip -q awscliv2.zip && ./aws/install \
  && curl -fsSL https://get.docker.com | sh \
  && rm -rf /var/lib/apt/lists/* /tmp/* awscliv2.zip aws get-docker.sh \
  && mkdir /root/workdir

VOLUME [ "/root/workdir" ]
WORKDIR /root/workdir
