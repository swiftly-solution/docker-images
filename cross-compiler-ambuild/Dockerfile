FROM registry.gitlab.steamos.cloud/steamrt/sniper/sdk

LABEL MAINTAINER="SkuZZi <contact@skuzzi.ro / contact@swiftlys2.net>"

ENV FOLDER=swiftly
ENV GAME=cs2

WORKDIR /

RUN git clone https://github.com/alliedmodders/ambuild.git
RUN cd ambuild; python setup.py install; cd ..
RUN sudo apt install -y libreadline-dev libboost-all-dev libomp-dev

COPY ./setup.sh /setup.sh
RUN chmod +x /setup.sh

CMD /setup.sh $FOLDER $GAME
