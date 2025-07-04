#!/bin/sh

# Load all variables from .env into environment
export $(grep -v '^#' ./../.env | xargs)

docker build --build-arg CATALOGUE_MOUNTING_PATH=${CATALOGUE_MOUNTING_PATH} -t metron_ai/catalogue:latest .