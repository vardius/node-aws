FROM node:latest

RUN apt-get update && apt-get install -y python-pip python-dev build-essential \
    && pip install awscli --upgrade --user

ENV PATH="${HOME}/Library/Python/3.6/bin:${PATH}"

CMD [ "node" ]
