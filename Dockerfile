FROM alpine:3.14
RUN apk add --no-cache  py3-gunicorn py3-gevent
RUN pip install flask requests pycryptodome redis kubernetes kafka-python
RUN apk add --no-cache tzdata \
    && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone
ENV TZ Asia/Shanghai
