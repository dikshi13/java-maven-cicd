# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file from the host machine into the container
COPY target/java-maven-app-1.0-SNAPSHOT.jar /app/app.jar


# Command to run the application
CMD ["java", "-jar", "/app/app.jar"]

