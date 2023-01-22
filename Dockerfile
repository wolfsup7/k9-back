# syntax = docker/dockerfile
FROM python:3.11.1-alpine3.17
RUN --mount=type=cache,mode=0777,target=/root/.cache/pip pip install pyyaml

COPY requirements.txt requirements.txt


COPY ./ ./
WORKDIR /manage.py

EXPOSE 8000

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
