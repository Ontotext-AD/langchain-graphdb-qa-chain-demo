FROM ontotext/graphdb:10.5.1
RUN mkdir -p /opt/graphdb/dist/data/repositories/langchain
COPY config.ttl /opt/graphdb/dist/data/repositories/langchain/
COPY starwars-data.trig /
COPY rdfs.ttl /
COPY graphdb_create.sh /run.sh
ENTRYPOINT bash /run.sh