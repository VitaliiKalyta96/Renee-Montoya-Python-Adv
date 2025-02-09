FROM python:3.9.7-buster

RUN apt-get update && apt-get install -y gettext

ADD . /trello

RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r /trello/requirements/dev.txt

WORKDIR trello/src