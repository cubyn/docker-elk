#!/bin/bash
# This is for Kubernetes compat because we cant put env vars
# having special characters used by elasticsearch ('.')
# so we transform every env var (duplicate), changing _ to .
# ELASTIC_MAX_VAR becomes ELASTIC.MAX.VAR
MEGAENV=''
while IFS='=' read -r name value ; do
  if [[ $value != *" "* ]]; then
    MEGAENV=$MEGAENV`echo $name | tr _ .`=$value' '
  fi
done < <(env)

env $MEGAENV bin/es-docker