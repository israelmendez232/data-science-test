# DATA SCIENCE TEST

FROM jupyter/scipy-notebook:latest

USER root
ENV ACCESS_TOKEN=sha1:187193706987:05442142fec8f90f4536d3198f0b13b67bc86191
ENV LOCAL_WORKING_DIR=/usr/local/container
ENV LOCAL_SSL_CERTS=/usr/local/container/ssl

COPY requirements.txt requirements.txt
COPY ./container/ssl/jupyter.pem jupyter.pem

RUN apt-get install sudo && \
    sudo apt-get -y update && \
    pip install -r requirements.txt  && \
    jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.password=${ACCESS_TOKEN} --NotebookApp.certfile=jupyter.pem

EXPOSE 8888

# WORKDIR /usr/local/container
