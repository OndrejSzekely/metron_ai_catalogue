#!/bin/sh

# iterate over all positional arguments which represent the mounting volumes
mounted_volumes=""
while [ "$1" != "" ]; do
    mounted_volumes="${mounted_volumes} -v "$1""

    # Shift all the parameters down by one
    shift

done

docker run \
    --rm \
    -it \
    --env-file .env ${mounted_volumes} \
    --user "$(id -u):$(id -g)" \
    --volume "/etc/passwd:/etc/passwd:ro" \
    --volume "/etc/group:/etc/group:ro" \
    --volume "${HOME}:/${HOME}:ro" \
    -v $(pwd):/metron_ai_catalogue_repo \
    --name metron_ai_catalogue metron_ai/catalogue:latest