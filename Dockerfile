FROM python:3.9@sha256:4b7ee97f021e0d1f5749ea3ad6d1bae1ca15a9b42cdebcf40269502d54f56666
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/