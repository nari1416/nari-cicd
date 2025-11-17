# Stage 1: build the WAR
FROM maven:3.8.8-openjdk-17 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -B -DskipTests clean package

# Stage 2: runtime Tomcat image
FROM tomcat:9.0.112-jdk11-temurin
LABEL maintainer="Nari <narikx180@gmail.com>"

EXPOSE 8080

# copy produced WAR (adjust path if pom changes name)
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/nginx.war
