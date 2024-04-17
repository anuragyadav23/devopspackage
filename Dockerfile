# the very first step is to install the jar jre image

FROM openjdk:17-jdk-slim
# information around who maintains the image
# MAINTAINER eazybytes.com
# add application's jar to the image
COPY target/package-0.0.1-SNAPSHOT.jar package-0.0.1-SNAPSHOT.jar
# execute the application
ENTRYPOINT ["java", "-jar", "package-0.0.1-SNAPSHOT.jar"]