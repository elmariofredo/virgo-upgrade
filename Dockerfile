FROM python:3.7.1-alpine3.8

WORKDIR /ansible

RUN pip install pyyaml

RUN apk add git \
        openssh-client \
        --no-cache

RUN mkdir ~/.ssh && echo -e "Host *\n  StrictHostKeyChecking no" > ~/.ssh/config

COPY upgrade.py /
