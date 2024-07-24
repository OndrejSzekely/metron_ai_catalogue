FROM python:3.11.9
RUN pip install "dvc[all]"
CMD [ "bash" ]