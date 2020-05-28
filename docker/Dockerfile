FROM nvidia/cuda:10.0-base-ubuntu16.04

RUN apt-get update

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa

RUN apt-get update

# Install latest version of python3
RUN apt-get install -y python3.6
RUN apt-get install -y python3.6-dev python3-pip
RUN apt-get install -y build-essential
RUN apt-get install -y libblas-dev libatlas-base-dev

# Upgrade pip
RUN apt-get install -y git

# slayerPytorch
WORKDIR /work
RUN git clone https://github.com/bamsumit/slayerPytorch

WORKDIR /work/slayerPytorch
RUN python3.6 -m pip install --upgrade pip
RUN pip install -r requirements.txt

# Bind python3.6 to python
RUN touch ~/.bash_aliases
RUN echo alias python='/usr/bin/python3.6' >> ~/.bash_aliases
