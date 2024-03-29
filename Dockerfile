FROM alpine:3.13
RUN apk add --no-cache python3 py3-pip py3-gunicorn py3-gevent 
RUN apk add --no-cache tzdata \
    && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone
ENV TZ Asia/Shanghai


