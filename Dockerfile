FROM python:3.13.2
RUN pip install "dvc[all]"
CMD [ "bash" ]