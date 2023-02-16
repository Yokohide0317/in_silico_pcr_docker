FROM perl:threaded-buster

RUN apt-get update && apt-get -y install gosu
COPY ./in_silico_PCR.pl /usr/bin/
ENV PATH $PATH:/usr/bin
RUN chmod +x /usr/bin/in_silico_PCR.pl

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
WORKDIR /data


ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
