FROM python:3.10.12
RUN pip install "dvc[all]"
# install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
CMD [ "bash" ]