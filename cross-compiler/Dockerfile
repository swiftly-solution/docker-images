FROM registry.gitlab.steamos.cloud/steamrt/sniper/sdk

LABEL MAINTAINER="SkuZZi <contact@skuzzi.ro / contact@swiftlycs2.net>"

ENV FOLDER=swiftly
ENV GAME=cs2

WORKDIR /

RUN wget https://xmake.io/shget.text -O - | bash
RUN sudo apt install -y libreadline-dev libboost-all-dev libomp-dev

COPY ./setup.sh /setup.sh
RUN chmod +x /setup.sh

CMD /setup.sh $FOLDER $GAME
