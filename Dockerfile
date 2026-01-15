ARG NODE_VERSION=22.14-bullseye
FROM node:${NODE_VERSION}
RUN apt-get update \
  && apt-get install -y --no-install-recommends openjdk-11-jre \
  && rm -rf /var/lib/apt/lists/* /tmp/* \
  && mkdir /root/workdir
RUN curl -sS "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip -q awscliv2.zip && ./aws/install && rm -rf awscliv2.zip aws
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh ./get-docker.sh
VOLUME [ "/root/workdir" ]
WORKDIR /root/workdir
