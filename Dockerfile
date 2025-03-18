# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file from the host machine into the container
COPY target/java-maven-cicd-1.0.jar /app/app.jar

# Command to run the application
CMD ["java", "-jar", "/app/app.jar"]

