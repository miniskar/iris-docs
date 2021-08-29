FROM ubuntu:latest

RUN apt-get update &&\
    apt-get install -y build-essential &&\
    apt-get install -y git cmake vim

RUN cd /opt &&\
    git clone https://github.com/jungwonkim/iris.git &&\
    cd iris &&\
    mkdir build &&\
    cd build &&\
    cmake .. &&\
    make -j install

