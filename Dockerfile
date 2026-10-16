ARG NODE_VERSION=24.22-trixie
FROM node:${NODE_VERSION}

RUN apt-get update \
  && apt-get install -y --no-install-recommends openjdk-21-jre unzip \
  && curl -sS "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip -q awscliv2.zip && ./aws/install \
  && curl -sS "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb" \
  && dpkg -i session-manager-plugin.deb \
  && curl -fsSL https://get.docker.com | sh \
  && rm -rf /var/lib/apt/lists/* /tmp/* awscliv2.zip aws session-manager-plugin.deb get-docker.sh \
  && mkdir /root/workdir

VOLUME [ "/root/workdir" ]
WORKDIR /root/workdir
