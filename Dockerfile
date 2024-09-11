FROM python:3.12.5
RUN pip install "dvc[all]"
CMD [ "bash" ]