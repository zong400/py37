FROM python:3.7.11-alpine

RUN apk --no-cache add gcc libc-dev libffi-dev musl-dev make libevent-dev build-base
RUN pip install flask requests gunicorn pycryptodome redis kubernetes kafka-python gevent
RUN apk add --no-cache tzdata \
    && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone
ENV TZ Asia/Shanghai