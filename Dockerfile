# Use a lightweight OpenJDK 21 image
FROM eclipse-temurin:21-jre

# Set the working directory
WORKDIR /app

# Copy the Spring Boot JAR into the container
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]