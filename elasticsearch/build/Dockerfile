FROM docker.elastic.co/elasticsearch/elasticsearch:6.5.3
MAINTAINER steve@webtura.co.uk

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch repository-hdfs

CMD ["/usr/share/elasticsearch/bin/elasticsearch"]
