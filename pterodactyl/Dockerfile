FROM        registry.gitlab.steamos.cloud/steamrt/sniper/platform:latest-container-runtime-depot
LABEL       author="SkuZZi" maintainer="contact@skuzzi.ro"
LABEL       org.opencontainers.image.description SteamRT3 Docker Image with GDB. 
LABEL       org.opencontainers.image.source="https://github.com/swiftly-solution/docker-images"

RUN         mkdir -p /etc/sudoers.d && echo "%sudo ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/flatdeb && chmod 0440 /etc/sudoers.d/flatdeb
ENV         DEBIAN_FRONTEND=noninteractive
RUN         apt update && apt install -y iproute2 lldb gdb ffmpeg && apt-get clean
RUN         git clone https://github.com/peadar/pstack; cd pstack; mkdir build; cd build; cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..; make -j4; make install; cd ../..; rm -rf pstack

ENV         DOTNET_ROOT=/usr/share/dotnet
ENV         PATH=/usr/share/dotnet:/usr/share/dotnet/tools:/root/.dotnet/tools:$PATH
RUN         curl -fsSL https://dot.net/v1/dotnet-install.sh -o /tmp/dotnet-install.sh && \
            chmod +x /tmp/dotnet-install.sh && \
            /tmp/dotnet-install.sh --install-dir /usr/share/dotnet --channel 10.0 && \
            rm -f /tmp/dotnet-install.sh

RUN         useradd -m -d /home/container -s /bin/bash container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

ENV         PATH=/home/container/.dotnet/tools:/usr/share/dotnet:$PATH
RUN         dotnet tool install --global dotnet-sos
RUN         dotnet-sos install

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
