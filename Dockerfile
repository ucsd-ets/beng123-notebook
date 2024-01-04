ARG BASE_CONTAINER=ucsdets/datascience-notebook:stable

FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <its-academictechinnovation@ucsd.edu>"

USER root

RUN apt-get update && \
    apt-get -y install software-properties-common && \
    add-apt-repository -y universe && \
    apt-get -y install libncurses5-dev libncursesw5-dev libncurses5

USER jovyan

RUN pip install --no-cache-dir masspy==0.1.6
