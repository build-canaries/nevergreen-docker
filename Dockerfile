FROM java:8-jre

MAINTAINER Manasi Kulkarni <mkulkarn@thoughtworks.com>, Stephen Cowley <ste@thoughtworks.com>, Joe Wright <joe@joejag.com>

RUN wget https://nevergreen.io/latest

EXPOSE 5000

CMD ["java", "-jar", "nevergreen-standalone.jar"]
