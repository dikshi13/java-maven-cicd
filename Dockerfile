# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-slim

# Install necessary tools (net-tools for netstat, procps for ps)
RUN apt-get update && apt-get install -y net-tools procps && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file from the host machine into the container
COPY target/java-maven-app-1.0-SNAPSHOT.jar /app/app.jar

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "/app/app.jar"]

