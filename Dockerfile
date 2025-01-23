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
RUN pip install --no-cache-dir cobra==0.23.0 libroadrunner==2.2.2 masspy==0.1.7 matplotlib==3.6.2 notebook==6.5.2 numpy==1.23.5 optlang==1.6.1 pandas==1.5.2 pip==22.2.2 scipy==1.9.3 setuptools==65.5.0 six==1.16.0 sympy==1.11.1 tabulate==0.9.0 wheel==0.37.1
