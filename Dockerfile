FROM python:3.7.4-alpine

RUN apk --no-cache add gcc
RUN pip install flask requests gunicorn pycryptodome
