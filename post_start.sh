#!/bin/bash

# Install project
(
    cd $CATALOGUE_MOUNTING_PATH
    uv sync --group devtools --all-extras --inexact
)

export PATH="${CATALOGUE_MOUNTING_PATH}/.venv/bin:$PATH"

# Install pre-commit hooks
(
    source $CATALOGUE_MOUNTING_PATH/.venv/bin/activate
    cd $CATALOGUE_MOUNTING_PATH
    pre-commit install
)

echo "source $CATALOGUE_MOUNTING_PATH/.venv/bin/activate" >> ~/.bashrc