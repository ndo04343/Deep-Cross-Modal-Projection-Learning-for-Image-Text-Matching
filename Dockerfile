FROM centos:8.3.2011

# set environment variables
ENV WORKSPACE /workspace

# set working directory
WORKDIR /workspace

# copy dependencies
COPY requirements.txt /workspace/

# install dependencies
RUN yum -y update && \
    yum -y groupinstall 'Development Tools' && \
    yum -y install \
            zlib \
            zlib-devel \
            libffi-devel \
            openssl \
            openssl-devel && \
    curl -O https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz && \
    tar zxvf Python-3.8.1.tgz && \
    cd Python-3.8.1 && \
    ./configure && \
    make && \
    make install && \
    rm -r ./* 

RUN pip3 install -r requirements.txt

# copy project
COPY . /workspace/

# expose port
# 6006 : tensorboard
EXPOSE 6006