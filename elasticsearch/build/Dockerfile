FROM docker.elastic.co/elasticsearch/elasticsearch:6.5.0
MAINTAINER steve@webtura.co.uk

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch repository-hdfs

ENV PATH /usr/share/elasticsearch/bin:$PATH

WORKDIR /usr/share/elasticsearch

# Copy configuration
COPY config /usr/share/elasticsearch/config

# Copy run script
COPY run.sh /

# Set environment variables defaults
ENV ES_JAVA_OPTS "-Xms512m -Xmx512m"
ENV CLUSTER_NAME elasticsearch-default
ENV NODE_MASTER true
ENV NODE_DATA true
ENV NODE_INGEST true
ENV NODE_ML false
ENV HTTP_ENABLE true
ENV NETWORK_HOST _site_
ENV HTTP_CORS_ENABLE true
ENV HTTP_CORS_ALLOW_ORIGIN *
ENV NUMBER_OF_MASTERS 1
ENV MAX_LOCAL_STORAGE_NODES 1
ENV SHARD_ALLOCATION_AWARENESS ""
ENV SHARD_ALLOCATION_AWARENESS_ATTR ""
ENV MEMORY_LOCK true
ENV XPACK_MONITORING_ENABLED true
ENV SEARCH_REMOTE_CONNECT false
ENV PATH_DATA "[ /data/data ]"
ENV PATH_LOG "/data/log"

# Volume for Elasticsearch data storage
#VOLUME ["/data"]

CMD ["/run.sh"]
