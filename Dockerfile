FROM ubuntu:18.04

RUN dpkg --add-architecture i386 \
  && apt-get update \
  # preselect accept steamcmd license \
  && echo steamcmd steam/question select "I AGREE" | debconf-set-selections \
  && echo steamcmd steam/license: note '' | debconf-set-selections \
  && apt-get install -y \
    bc \
    binutils \
    bsdmainutils \
    bzip2 \
    ca-certificates \
    curl \
    file \
    gzip \
    jq \
    lib32gcc1 \
    libstdc++6:i386 \
    lib32stdc++6 \
    python3 \
    tmux \
    unzip \
    util-linux \
    wget \
    iproute2 \
    ethtool \
    netcat \
    steamcmd \
    openssh-server \
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /tmp/* \
  && rm -rf /var/tmp/*


