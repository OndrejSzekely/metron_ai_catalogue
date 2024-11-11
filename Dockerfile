FROM python:3.13.0rc2
RUN pip install "dvc[all]"
CMD [ "bash" ]