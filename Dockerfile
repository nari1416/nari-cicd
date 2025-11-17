FROM tomcat:9.0.112-jdk25-temurin-jammy

MAINTAINER Nari <narivk18@gmail.com>

EXPOSE 8080

COPY target/nginx.war /usr/local/tomcat/webapps/nginx.war
