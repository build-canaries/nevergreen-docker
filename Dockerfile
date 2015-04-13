FROM java:8-jre

MAINTAINER Manasi Kulkarni <mkulkarn@thoughtworks.com>, Stephen Cowley <ste@thoughtworks.com>, Joe Wright <joe@joejag.com>

RUN wget https://github.com/build-canaries/nevergreen/releases/download/v0.5.0/nevergreen-standalone.jar

EXPOSE 5000

CMD ["java", "-jar", "nevergreen-standalone.jar"]
