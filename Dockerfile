FROM ubuntu:22.04
ARG UV_INSTALL_DIR
ARG workdir_path=/tmp
ARG USERNAME=metron


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
ENV PATH="$UV_INSTALL_DIR/:$PATH"

COPY post_start.sh $UV_INSTALL_DIR/post_start.sh
RUN chmod +x $UV_INSTALL_DIR/post_start.sh
RUN echo "$UV_INSTALL_DIR/post_start.sh" >> /etc/bash.bashrc

CMD ["/home/metron/post_start.sh"]