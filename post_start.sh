#!/bin/bash

# Install project
(
    cd $CATALOGUE_MOUNTING_PATH
    uv sync --group devtools --all-extras --inexact
)

export PATH="${CATALOGUE_MOUNTING_PATH}/.venv/bin:$PATH"

source $CATALOGUE_MOUNTING_PATH/.venv/bin/activate

# Install pre-commit hooks
(
    cd $CATALOGUE_MOUNTING_PATH
    pre-commit install
)