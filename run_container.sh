#!/bin/sh

# Load all variables from .env into environment
export $(grep -v '^#' .env | xargs)

# iterate over all positional arguments which represent the mounting volumes
mounted_volumes=""
while [ "$1" != "" ]; do
    mounted_volumes="${mounted_volumes} -v "$1""

    # Shift all the parameters down by one
    shift

done

docker run \
    -it \
    --env-file .env ${mounted_volumes} \
    --user "$(id -u):$(id -g)" \
    -v $(pwd):$CATALOGUE_MOUNTING_PATH \
    --name metron_ai_catalogue metron_ai/catalogue:latest \
    bash