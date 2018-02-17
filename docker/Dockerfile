FROM openjdk
LABEL author="Sorin Miron"

RUN apt-get update && apt-get install -y wget tar
RUN cd /opt && \
    wget https://github.com/graknlabs/grakn/releases/download/v1.1.0/grakn-dist-1.1.0.tar.gz && \
    tar -xzf grakn-dist-1.1.0.tar.gz && \
    rm -f grakn-dist-1.1.0.tar.gz

EXPOSE 80 4567

WORKDIR /opt/grakn-dist-1.1.0

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh && \
    chmod +x grakn && \
    chmod +x graql

ENTRYPOINT ["./entrypoint.sh"]
CMD ["./grakn", "server", "start"]
