# DATA SCIENCE TEST

FROM jupyter/scipy-notebook:latest

USER root

COPY requirements.txt requirements.txt
COPY ./container/jupyter.pem jupyter.pem
COPY ./container/notebook.sh notebook.sh

EXPOSE 8888

# WORKDIR /usr/local/container
