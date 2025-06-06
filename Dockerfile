# Stage 1: Build
FROM maven:3-eclipse-temurin-17 AS build
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM eclipse-temurin:17-alpine
COPY --from=build /target/DogsManagementSystem-0.0.1-SNAPSHOT.jar DogsManagementSystem.jar
EXPOSE 8080
CMD ["java", "-jar", "DogsManagementSystem.jar"]
