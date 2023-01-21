# syntax = docker/dockerfile:experimental
FROM python:3.7-alpine
RUN --mount=type=cache,mode=0777,target=/root/.cache/pip pip install pyyaml

COPY requirements.txt requirements.txt


COPY . code
WORKDIR /code

EXPOSE 8000

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
