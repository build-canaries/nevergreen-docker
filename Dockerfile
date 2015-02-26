FROM debian:wheezy
USER root
MAINTAINER Build Canaries

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN apt-get update
RUN apt-get -y install oracle-java8-installer

RUN wget --no-check-certificate https://github.com/build-canaries/nevergreen/releases/download/v0.5.0/nevergreen-standalone.jar
CMD ["java", "-jar", "nevergreen-standalone.jar"]
