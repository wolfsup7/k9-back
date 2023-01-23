# pull official base image
FROM ubuntu:18.04

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
COPY ~/ga-env/bin .
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy project
COPY . .

CMD python manage.py runserver 0.0.0.0:8000