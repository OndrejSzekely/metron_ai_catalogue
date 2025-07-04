#!/bin/bash

export PATH="$(pwd)/.venv/bin:$PATH"

# Install dependencies
uv sync --group devtools --all-extras --inexact

# Install pre-commit hooks
source $(pwd)/.venv/bin/activate
pre-commit install

echo "source $(pwd)/.venv/bin/activate" >> ~/.bashrc