FROM docker.elastic.co/elasticsearch/elasticsearch:5.5.1
USER root
CMD chmod 777 /usr/share/elasticsearch/data; /usr/sbin/runuser -l elasticsearch -c bin/es-docker
