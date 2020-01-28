FROM r-base:3.6.2

COPY ./entrypoint.sh /

COPY ./init.R /

RUN apt update && apt install -y python3-pip libcurl4-openssl-dev  libxml2-dev libssl-dev nodejs npm&& pip3 install jupyterlab && pip3 install --pre jupyter-lsp && Rscript /init.R && chmod +x /entrypoint.sh && jupyter labextension install @krassowski/jupyterlab-lsp

ENTRYPOINT ["/entrypoint.sh"]
