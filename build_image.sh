#!/bin/sh

# Load all variables from .env into environment
export $(grep -v '^#' ./../.env | xargs)

docker build -t metron_ai/catalogue:latest .