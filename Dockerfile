ARG NODE_VERSION=16.10-stretch
FROM node:${NODE_VERSION}
RUN apt-get update \
  && apt-get install -y --no-install-recommends openjdk-8-jre \
  && rm -rf /var/lib/apt/lists/* /tmp/* \
  && mkdir /root/workdir
VOLUME [ "/root/workdir" ]
WORKDIR /root/workdir
