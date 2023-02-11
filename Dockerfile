FROM python:3.9@sha256:6f859d00a885892c341af52acc035654404f863ae41121ac42027d18dec5a86c
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/