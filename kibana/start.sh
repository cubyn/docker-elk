#!/bin/sh
dockerize -template /usr/share/kibana/config/kibana.yml:/usr/share/kibana/config/kibana.yml

/bin/sh -c /usr/local/bin/kibana-docker