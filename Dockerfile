FROM python:3.12
RUN pip install uv

# Add user with sudo support. Omit if you don't need to install software after connecting.
ARG USERNAME=metron
RUN useradd -m -u 1000 -s /bin/bash $USERNAME
RUN apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

ARG workdir_path=/tmp
WORKDIR $workdir_path

# uv sync will use `uv.lock` if available
COPY pyproject.toml ./
RUN uv sync --group devtools --all-extras --inexact && rm pyproject.toml

WORKDIR /
USER $USERNAME

CMD [ "bash" ]