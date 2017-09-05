FROM ubuntu:16.04

RUN apt-get clean && apt-get update && apt-get install -y locales tzdata

ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

RUN apt-get update && apt-get upgrade

RUN apt-get install -y build-essential
RUN apt-get install -y vim
RUN apt-get install -y make
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install -y git
