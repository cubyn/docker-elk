#!/bin/sh
dockerize -template /usr/share/logstash/config/logstash.yml.tpl:/usr/share/logstash/config/logstash.yml
dockerize -template /usr/share/logstash/pipeline/logstash.conf.tpl:/usr/share/logstash/pipeline/logstash.conf

sh /logstash-entrypoint.sh logstash -f /usr/share/logstash/pipeline/logstash.conf