FROM python:3.10.14
RUN pip install "dvc[all]"
CMD [ "bash" ]