FROM registry.gitlab.steamos.cloud/steamrt/sniper/sdk

LABEL MAINTAINER="SkuZZi <contact@skuzzi.ro / contact@swiftlycs2.net>"

ENV FOLDER=swiftly

WORKDIR /

RUN git clone https://github.com/alliedmodders/ambuild.git
RUN cd ambuild; python setup.py install; cd ..
RUN sudo apt install -y libreadline-dev

COPY ./setup.sh /setup.sh
RUN chmod +x /setup.sh

CMD /setup.sh $FOLDER