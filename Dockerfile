FROM r-base:3.6.2

COPY ./entrypoint.sh /

COPY ./init.R /

RUN apt update && \
    apt install -y python3-pip libcurl4-openssl-dev  libxml2-dev libssl-dev git nodejs npm build-essential mecab libmecab-dev mecab-ipadic mecab-ipadic-utf8 fonts-ipafont && \
    pip3 install jupyterlab && \
    Rscript /init.R && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
