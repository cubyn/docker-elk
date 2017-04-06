#!/bin/bash
MEGAENV=''
while IFS='=' read -r name value ; do
  if [[ $value != *" "* ]]; then
    MEGAENV=$MEGAENV`echo $name | tr _ .`=$value' '
  fi
done < <(env)

env $MEGAENV bin/es-docker