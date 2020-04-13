# DATA SCIENCE TEST

FROM jupyter/datascience-notebook:latest

USER root
ENV ACCESS_TOKEN=sha1:187193706987:05442142fec8f90f4536d3198f0b13b67bc86191
ENV ACCESS_TOKEN=sha1:187193706987:05442142fec8f90f4536d3198f0b13b67bc86191
ENV ACCESS_TOKEN=sha1:187193706987:05442142fec8f90f4536d3198f0b13b67bc86191
ENV ACCESS_TOKEN=sha1:187193706987:05442142fec8f90f4536d3198f0b13b67bc86191

COPY requirements.txt requirements.txt
COPY jupyter.pem jupyter.pem

RUN apt-get install sudo && \
    sudo apt-get -y update && \
    pip install -r requirements.txt  && \
    jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.password=${ACCESS_TOKEN} --NotebookApp.certfile=jupyter.pem

EXPOSE 8888

WORKDIR /usr/local/container
