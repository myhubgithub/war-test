FROM openjdk:8-jdk-alpine
MAINTAINER "ucearun@gmail.com"
VOLUME /tmp
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} app.jar
RUN echo "Creation of your docker image is in progress, please hold on for a moment"
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "app.jar"]
