FROM        registry.gitlab.steamos.cloud/steamrt/sniper/platform:latest-container-runtime-depot
LABEL       author="SkuZZi" maintainer="contact@skuzzi.ro"
LABEL       org.opencontainers.image.description SteamRT3 Docker Image with GDB. 
LABEL       org.opencontainers.image.source="https://github.com/swiftly-solution/docker-images"

RUN         mkdir -p /etc/sudoers.d && echo "%sudo ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/flatdeb && chmod 0440 /etc/sudoers.d/flatdeb
ENV         DEBIAN_FRONTEND=noninteractive
RUN         apt update && apt install -y iproute2 gdb ffmpeg && apt-get clean
RUN         git clone https://github.com/peadar/pstack; cd pstack; mkdir build; cd build; cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..; make -j4; make install; cd ../..; rm -rf pstack
USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
