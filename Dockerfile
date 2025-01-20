FROM python:3.14.0a4
RUN pip install "dvc[all]"
CMD [ "bash" ]