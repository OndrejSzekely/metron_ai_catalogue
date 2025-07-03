#!/bin/sh

# Load all variables from .env into environment
export $(grep -v '^#' ./../.env | xargs)

docker build --build-arg UV_INSTALL_DIR=$UV_INSTALL_DIR -t metron_ai/catalogue:latest .