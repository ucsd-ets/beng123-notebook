ARG BASE_CONTAINER=ucsdets/datascience-notebook:2022.1-stable

FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <its-academictechinnovation@ucsd.edu>"

USER root

RUN apt-get install -y libncurses5-dev libncursesw5-dev

USER jovyan

RUN pip install --no-cache-dir masspy
