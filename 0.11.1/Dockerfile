FROM openjdk:8-jre-alpine 

MAINTAINER Manasi Kulkarni <mkulkarn@thoughtworks.com>, Stephen Cowley <ste@thoughtworks.com>, Joe Wright <joe@joejag.com>, Christopher Martin

RUN wget https://github.com/build-canaries/nevergreen/releases/download/v0.11.1/nevergreen-standalone.jar

EXPOSE 5000

CMD ["java", "-jar", "nevergreen-standalone.jar"]
