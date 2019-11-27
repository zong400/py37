FROM python:3.7.4-alpine

RUN pip install kubernetes kafka-python
RUN echo 'Asia/Shanghai' >/etc/timezone
