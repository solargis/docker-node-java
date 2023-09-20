ARG NODE_VERSION=18.18-bullseye
FROM node:${NODE_VERSION}
RUN apt-get update \
  && apt-get install -y --no-install-recommends openjdk-11-jre \
  && rm -rf /var/lib/apt/lists/* /tmp/* \
  && mkdir /root/workdir
VOLUME [ "/root/workdir" ]
WORKDIR /root/workdir
