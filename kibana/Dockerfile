# https://github.com/elastic/kibana-docker
FROM docker.elastic.co/kibana/kibana:5.4.0

# Add your kibana plugins setup here
# Example: RUN kibana-plugin install <name|url>

USER root
RUN curl -L https://github.com/jwilder/dockerize/releases/download/v0.4.0/dockerize-linux-amd64-v0.4.0.tar.gz | tar xvz -C /usr/local/bin

# Configuration files
COPY config/kibana.yml /usr/share/kibana/config/kibana.yml
RUN chown -R kibana:kibana /usr/share/kibana/config/

USER kibana

COPY start.sh /start.sh

RUN /usr/local/bin/kibana-docker 2>&1 | grep -m 1 "Optimization of .* complete in .* seconds" 

ENTRYPOINT ["/start.sh"]