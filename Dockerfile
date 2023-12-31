FROM openjdk:17-jdk-slim-bullseye

ARG JAR_FILE=target/*.jar
COPY ./target/ServiceTask-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-Dspring.profiles.active=docker","-jar","/app.jar"]
