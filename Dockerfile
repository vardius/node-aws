FROM node:alpine

RUN apk add --update \
    python-pip \
    python-dev \
    build-essential \
  && pip install awscli --upgrade --user \
  && rm -rf /var/cache/apk/*

CMD [ "node" ]
