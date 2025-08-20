#FROM openjdk:17-jdk-slim
#
#VOLUME /tmp
#
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar
#
#EXPOSE 8761
#
#ENTRYPOINT ["java", "-jar", "/app.jar"]


FROM maven:3.9.0-eclipse-temurin-17-alpine AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]