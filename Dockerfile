FROM python:3.6-alpine3.7

# update apk repo
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.7/main" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/v3.7/community" >> /etc/apk/repositories && \
    apk update && \
    apk add chromium && \
    apk add libpq postgresql-dev && \
    apk add build-base && \
    pip install pipenv
