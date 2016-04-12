#!/bin/bash
chown -R elasticsearch:elasticsearch /usr/share/elasticsearch/data
exec /sbin/setuser elasticsearch elasticsearch -Des.network.host=0.0.0.0 &> /var/log/elasticsearch/elasticsearch.log

