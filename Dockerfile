# Dockerfile
FROM openjdk:17-jdk-slim AS build
WORKDIR /app
COPY . .
RUN ./mvnw package -DskipTests

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]