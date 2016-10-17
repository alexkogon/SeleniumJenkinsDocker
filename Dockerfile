FROM jenkins:latest
MAINTAINER alex@kogon.com

# set the timezone to be Europe/Amsterdam
#RUN rm -f /etc/localtime && ln -s /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime
#RUN yum -y update
RUN yum clean all
#RUN yum -y install libXext libX11 libXcursor libSM libICE libGL fontconfig libXinerama
#RUN yum -y groupinstall fonts
RUN yum -y install git \
                   wget \
                   unzip \
                   java-1.8.0-openjdk* \
                   ant
RUN wget http://chromedriver.storage.googleapis.com/2.24/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip

RUN yum clean all
