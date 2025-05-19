FROM python:3.13.3
RUN pip install "dvc[all]"
CMD [ "bash" ]