#!/bin/bash

export PATH="$(pwd)/.venv/bin:$UV_INSTALL_DIR/:$PATH"

source $(pwd)/.venv/bin/activate

# Install dependencies
uv sync --group devtools --all-extras --inexact

# Install pre-commit hooks
pre-commit install