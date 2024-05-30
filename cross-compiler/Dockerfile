FROM registry.gitlab.steamos.cloud/steamrt/sniper/sdk

LABEL MAINTAINER="SkuZZi <contact@skuzzi.ro / contact@swiftlycs2.net>"

ENV FOLDER=swiftly

WORKDIR /

RUN git clone https://github.com/alliedmodders/ambuild.git
RUN cd ambuild; python setup.py install; cd ..
RUN sudo apt install -y libreadline-dev libboost-all-dev

RUN wget https://github.com/openssl/openssl/releases/download/openssl-3.2.0/openssl-3.2.0.tar.gz; tar zxvf openssl-3.2.0.tar.gz; cd openssl-3.2.0;
RUN ./Configure no-shared -static --static --prefix=/usr linux-x86_64; make -j $(nproc); make install -j $(nproc)
RUN cd ..

COPY ./setup.sh /setup.sh
RUN chmod +x /setup.sh

CMD /setup.sh $FOLDER