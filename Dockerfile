#FROM tomcat:latest
#WORKDIR /usr/local/tomcat/webapps
#COPY ./target/ashwin-web.war /usr/local/tomcat/webapps/ashwin-web.war
#EXPOSE 8080
#CMD ["startup.sh", "run"]

FROM openjdk:8
ENV PORT 8080
EXPOSE 8080
ENV ASPNETCORE_URLS "http://*:${PORT}"
ADD target/ashwin-web.jar ashwin-web.jar
ENTRYPOINT ["java","-jar","/ashwin-web.jar"]
