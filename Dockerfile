ARG NODE_VERSION=20.18-bullseye
FROM node:${NODE_VERSION}
RUN apt-get update \
  && apt-get install -y --no-install-recommends openjdk-11-jre \
  && rm -rf /var/lib/apt/lists/* /tmp/* \
  && mkdir /root/workdir
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh ./get-docker.sh
VOLUME [ "/root/workdir" ]
WORKDIR /root/workdir
