FROM python:3.6-buster

ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y

LABEL maintainer="Rod rod@miflink.com "

RUN mkdir /src

WORKDIR /src

COPY requirements.txt .

RUN pip install -r requirements.txt

