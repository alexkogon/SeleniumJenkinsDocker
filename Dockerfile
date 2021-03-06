FROM pantinor/centos-jenkins:latest
MAINTAINER alex@kogon.com

#USER root
RUN yum clean all
RUN yum -y install git \
                   wget \
                   unzip \
                   openjdk-8-jdk 
#                   openjdk-8-jdk \
#                   ant
RUN yum clean all
RUN wget http://chromedriver.storage.googleapis.com/2.24/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip -d /usr/local/bin
RUN rm chromedriver_linux64.zip
RUN wget https://pypi.python.org/packages/source/s/setuptools/setuptools-7.0.tar.gz --no-check-certificate
RUN tar xzf setuptools-7.0.tar.gz
RUN python setuptools-7.0/setup.py install
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install sphinx

