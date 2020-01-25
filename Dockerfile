FROM r-base:3.6.2

COPY ./entrypoint.sh /

COPY ./init.R /

RUN apt update && apt install -y python3-pip && pip3 install jupyterlab && Rscript /init.R && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
