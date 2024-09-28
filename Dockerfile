FROM python:3.12.6
RUN pip install "dvc[all]"
CMD [ "bash" ]