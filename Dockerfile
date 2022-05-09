FROM tomcat:9 AS build
RUN apt install openjdk-8-jdk -y
RUN apt install ca-certificates curl gnupg lsb-release -y
RUN apt install maven wget unzip -y
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src
RUN mvn -f pom.xml clean package
COPY cp ./target/*.war /var/lib/tomcat9/webapps/ROOT/sparkjava-hello-world-1.0.war
COPY cp ./*.war /var/lib/tomcat9/webapps/sparkjava-hello-world-1.0.war
EXPOSE 8080
