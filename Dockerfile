ARG NODE_VERSION=12.18
FROM node:${NODE_VERSION}
RUN apt-get update \
  && apt-get install -y --no-install-recommends openjdk-8-jre \
  && rm -rf /var/lib/apt/lists/* /tmp/* \
  && npm i -g npm \
  && mkdir /root/workdir
VOLUME [ "/root/workdir" ]
WORKDIR /root/workdir
