FROM elasticsearch:5.5.1
ADD elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
#CMD chmod 777 /usr/share/elasticsearch/data; ES_JAVA_OPTS=$ES_JAVA_OPTS /usr/sbin/runuser -p -l elasticsearch -c bin/es-docker
CMD chmod 777 /usr/share/elasticsearch/data; su elasticsearch -c bin/es-docker
