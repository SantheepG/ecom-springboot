# Use OpenJDK 21 base image
FROM eclipse-temurin:21-jdk-alpine

# Set the working directory inside the container
#WORKDIR /app
ARG JAR_FILE=target/*.jar
# Copy the built JAR file into the container
COPY target/ecom-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port (default is 8080)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]

## Stage 1: Build the application using Maven
#FROM maven:3.9.8-eclipse-temurin-21 AS build
#
## Set the working directory
#WORKDIR /app
#
## Copy the pom.xml first to take advantage of Docker caching
#COPY pom.xml .
#
## Download dependencies (cache optimization)
#RUN mvn dependency:go-offline
#
## Copy the source code
#COPY src ./src
#
## Build the application
#RUN mvn clean package -DskipTests
#
## Stage 2: Run the application
#FROM openjdk:21
#
## Create an application directory inside the container
#WORKDIR /app
#
## Copy the built JAR file from the build stage
#COPY --from=build /app/target/mal-randomizer-0.0.1-SNAPSHOT.jar app.jar
#
## Expose the application port
#EXPOSE 8080
#
## Run the application
#CMD ["java", "-jar", "app.jar"]


