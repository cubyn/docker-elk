# https://github.com/elastic/logstash-docker
FROM blacktop/logstash:5.2

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json

RUN apk add dockerize --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

# Configuration files
COPY config/logstash.yml /usr/share/logstash/config/logstash.yml.tpl
COPY pipeline/logstash.conf /usr/share/logstash/pipeline/logstash.conf.tpl

COPY start.sh /start.sh

ENTRYPOINT ["/start.sh"]