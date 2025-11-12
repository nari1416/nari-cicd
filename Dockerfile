FROM tomcat:8.0.20-jre8

MAINTAINER Nari <narivk18@gmail.com>

EXPOSE 8080

COPY target/nginx.war /usr/local/tomcat/nginx/nginx.war
