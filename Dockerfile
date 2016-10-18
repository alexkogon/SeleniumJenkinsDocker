FROM jenkins:latest
MAINTAINER alex@kogon.com

USER root
RUN apt-get clean all
RUN apt-get -y install git \
                   wget \
                   unzip \
                   openjdk-8-jdk 
#                   openjdk-8-jdk \
#                   ant
RUN apt-get clean all
RUN wget http://chromedriver.storage.googleapis.com/2.24/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip -d /usr/local/bin
RUN rm chromedriver_linux64.zip
