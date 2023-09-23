FROM python:3.10.12
RUN pip install "dvc[all]"
CMD [ "bash" ]