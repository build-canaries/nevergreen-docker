FROM java:8-jre

MAINTAINER Manasi Kulkarni <mkulkarn@thoughtworks.com>

RUN wget https://github.com/build-canaries/nevergreen/releases/download/v0.5.0/nevergreen-standalone.jar

CMD ["java", "-jar", "nevergreen-standalone.jar"]
