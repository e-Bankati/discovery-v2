# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Label the image
LABEL authors="houda"

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/discovery-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port used by the Eureka Server
EXPOSE 8761

# Run the Eureka Server application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
