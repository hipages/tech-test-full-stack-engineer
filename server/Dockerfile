FROM python:3.8-slim-buster

WORKDIR /server

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

# install system dependencies
RUN apt-get update \
  && apt-get -y install gcc \
  && apt-get install -y pkg-config \
  && apt-get install -y python3-dev build-essential \
  && apt-get install -y default-libmysqlclient-dev \
  && apt-get clean

# install python dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /server/requirements.txt
RUN pip install -r requirements.txt

COPY . /server

