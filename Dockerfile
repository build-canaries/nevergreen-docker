FROM ubuntu:14.04.1
USER root
MAINTAINER Build Canaries

RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get -y update

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
RUN apt-get -y install oracle-java8-installer

RUN wget https://github.com/build-canaries/nevergreen/releases/download/v0.5.0/nevergreen-standalone.jar
CMD ["java", "-jar", "nevergreen-standalone.jar"]
