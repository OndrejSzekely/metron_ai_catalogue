FROM python:3.13.5
RUN pip install "dvc[all]"
CMD [ "bash" ]