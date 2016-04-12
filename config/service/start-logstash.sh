#!/bin/bash
sed -i -e "s,%LOGSTASH_CERT%,$LOGSTASH_CERT,g" /etc/logstash/main.conf
sed -i -e "s,%LOGSTASH_KEY%,$LOGSTASH_KEY,g" /etc/logstash/main.conf

exec /sbin/setuser logstash logstash -f /etc/logstash/main.conf -l /var/log/logstash/logstash.log

