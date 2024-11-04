FROM python:3.14.0a1
RUN pip install "dvc[all]"
CMD [ "bash" ]