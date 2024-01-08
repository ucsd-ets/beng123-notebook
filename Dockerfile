FROM ghcr.io/ucsd-ets/datascience-notebook:stable

LABEL maintainer="UC San Diego ITS/ETS <its-academictechinnovation@ucsd.edu>"

USER root

RUN apt-get update && \
    apt-get -y install software-properties-common && \
    add-apt-repository -y universe && \
    apt-get -y install libncurses5-dev libncursesw5-dev libncurses5

RUN pip install --no-cache-dir masspy==0.1.7
RUN pip install --upgrade numpy==1.13

USER jovyan
