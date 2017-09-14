FROM node:alpine


RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip \
  && pip install awscli --upgrade --user \
  && rm -rf /var/cache/apk/*

CMD [ "node" ]
