# https://github.com/elastic/elasticsearch-docker
FROM docker.elastic.co/elasticsearch/elasticsearch:5.4.0

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu

COPY config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

ADD start.sh /start.sh
CMD /start.sh