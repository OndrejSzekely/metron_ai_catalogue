FROM python:3.13.0b4
RUN pip install "dvc[all]"
CMD [ "bash" ]