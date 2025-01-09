# keeping parent as 2022.1 since masspy isn't in active development
ARG BASE_CONTAINER=ghcr.io/ucsd-ets/beng123-notebook:main

FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <its-academictechinnovation@ucsd.edu>"

USER root

RUN apt-get update && \
    apt-get -y install software-properties-common && \
    add-apt-repository -y universe && \
    apt-get -y install libncurses5-dev libncursesw5-dev libncurses5

USER jovyan

# See https://github.com/ucsd-ets/beng123-notebook/blob/main/package-versions.md
RUN pip install --no-cache-dir masspy==0.1.6 libroadrunner==2.1.1 numpy==1.22.1 optlang==1.8.1 pandas==1.5.3 sympy==1.12 cobra==0.23.0
