FROM node:latest

RUN apt-get update && apt-get install -y python-pip python-dev build-essential \
    && pip install awscli --upgrade --user

CMD [ "node" ]
