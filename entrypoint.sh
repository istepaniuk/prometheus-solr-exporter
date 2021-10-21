#!/bin/sh

target_solr_base_url=$1

if [ -z "$target_solr_base_url" ] ; then
    echo "missing argument: target_solr_base_url"
    exit 1
fi

cd "/opt/solr/contrib/prometheus-exporter" || exit 1

./bin/solr-exporter -p 9983 -b $target_solr_base_url -f ./conf/solr-exporter-config.xml -n 1
