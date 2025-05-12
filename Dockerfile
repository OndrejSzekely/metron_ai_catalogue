FROM python:3.12.10
RUN pip install "dvc[all]"
CMD [ "bash" ]