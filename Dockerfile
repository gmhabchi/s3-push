FROM python:3.10.7-alpine

LABEL "com.github.actions.name"="S3 Push"
LABEL "com.github.actions.description"="Sync a directory to an AWS S3 Bucket"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="0.1.0"
LABEL maintainer="Gerard Habchi <gmhabchi@gmail.com>"

ENV AWSCLI_VERSION='1.16.238'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]