FROM python:3.14.0a3
RUN pip install "dvc[all]"
CMD [ "bash" ]