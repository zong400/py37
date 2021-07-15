FROM alpine:3.14
RUN apk add --no-cache python3 py3-pip py3-gunicorn py3-gevent py3-pycryptodome py3-flask py3-requests py3-redis
RUN pip install kubernetes kafka-python
RUN apk add --no-cache tzdata \
    && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone
ENV TZ Asia/Shanghai
