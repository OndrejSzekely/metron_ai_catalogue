FROM python:3.12.3
RUN pip install "dvc[all]"
CMD [ "bash" ]