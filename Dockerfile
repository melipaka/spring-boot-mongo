# Use a base image with Java runtime
FROM openjdk:17-jdk-slim as build

#Create a directory
RUN mkdir -p /opt/app

# Set the working directory
WORKDIR /opt/app

# Copy the jar file into the container
COPY target/spring-boot-mongo-1.0.jar myapp.jar /opt/app/spring-boot-mongo.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "/opt/app/spring-boot-mongo.jar"]

