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
RUN python3.6 -m pip install --upgrade pip
RUN python3.6 -m pip install --upgrade setuptools

RUN apt-get install -y python3-tk
RUN apt-get install -y libglib2.0-0
RUN apt-get install -y libsm6 libxext6
RUN apt-get install -y git

# Install bindsnet and dependencies
RUN python3.6 -m pip install git+https://github.com/BindsNET/bindsnet.git

# Install git
RUN apt-get install -y git-core

# Install vim
RUN apt-get install -y vim
RUN python3.6 -m pip install jupyter -U
RUN python3.6 -m  pip install jupyterlab

# Bind python3.6 to python
RUN touch ~/.bash_aliases
RUN echo alias python='/usr/bin/python3.6' >> ~/.bash_aliases

# Create a working directory to work from
# RUN mkdir working

# Always start from /working
# RUN chmod 777 \/working
# ENTRYPOINT ["/working"]
