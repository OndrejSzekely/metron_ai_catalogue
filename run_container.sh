#!/bin/sh

# iterate over all positional arguments which represent the mounting volumes
mounted_volumes=""
while [ "$1" != "" ]; do
    mounted_volumes="${mounted_volumes} -v "$1""

    # Shift all the parameters down by one
    shift

done

docker run --rm -it ${mounted_volumes} -v $(pwd):/metron_ai_catalogue_repo --name metron_ai_catalogue metron_ai/catalogue:latest