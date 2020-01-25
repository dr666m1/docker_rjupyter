FROM ubuntu:xenial

COPY ./entrypoint.sh /

COPY ./init.R /

RUN apt update && apt install -y python3-pip r-base-core && pip3 install jupyterlab && R --slave --vanilla < /init.R && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
