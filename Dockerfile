FROM ubuntu:22.04 as uv_env_base
ARG SETUP_DIR=/home/metron
ARG USERNAME=metron
ARG UV_INSTALL_DIR=/usr/local/bin


RUN apt-get update && apt-get install -y curl git

# Add user with sudo support. Omit if you don't need to install software after connecting.
RUN groupadd --gid 1000 $USERNAME \
    && useradd --uid 1000 --gid 1000 --create-home --shell /bin/bash $USERNAME
RUN apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Fix GIT commit error
RUN apt install locales -y && sudo locale-gen en_US.UTF-8

# Install uv
RUN apt-get install -y --no-install-recommends curl ca-certificates
# Download the latest installer
ADD https://astral.sh/uv/install.sh /uv-installer.sh
# Run the installer then remove it
RUN sh /uv-installer.sh && rm /uv-installer.sh
# Ensure the installed binary is on the `PATH`
ENV PATH="$SETUP_DIR/:$PATH"

FROM uv_env_base

COPY post_start.sh $SETUP_DIR/post_start.sh
RUN chmod +x $SETUP_DIR/post_start.sh
RUN echo "$SETUP_DIR/post_start.sh" >> /etc/bash.bashrc

CMD ["/home/metron/post_start.sh"]