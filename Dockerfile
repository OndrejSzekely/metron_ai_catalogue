FROM python:3.14.0a2
RUN pip install "dvc[all]"
CMD [ "bash" ]