FROM registry.gitlab.steamos.cloud/steamrt/sniper/sdk

LABEL MAINTAINER="SkuZZi <contact@skuzzi.ro / contact@swiftlycs2.net>"

WORKDIR /

RUN git clone https://github.com/alliedmodders/ambuild.git
RUN cd ambuild; python setup.py install; cd ..
RUN sudo apt install -y libreadline-dev

CMD [ "/setup.sh" ]