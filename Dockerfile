# keeping parent as 2022.1 since masspy isn't in active development
ARG BASE_CONTAINER=ucsdets/datascience-notebook:2022.1-stable

FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <its-academictechinnovation@ucsd.edu>"

USER root

RUN apt-get update && \
    apt-get -y install software-properties-common && \
    add-apt-repository -y universe && \
    apt-get -y install libncurses5-dev libncursesw5-dev libncurses5

USER jovyan

RUN pip install --no-cache-dir masspy==0.1.7 libroadrunner==2.1.1
