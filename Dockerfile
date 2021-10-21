FROM solr:8.10

COPY entrypoint.sh /entrypoint.sh
COPY solr-exporter-config.xml /contrib/prometheus-exporter/conf/solr-exporter-config.xml

EXPOSE 9983

ENTRYPOINT ["/entrypoint.sh"]


