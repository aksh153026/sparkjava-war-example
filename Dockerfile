FROM tomcat:9-jdk-8-slim AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src
RUN mvn -f pom.xml clean package
COPY --from=build /workspace/target/*.war /var/lib/tomcat9/webapps/ROOT/sparkjava-hello-world-1.0.war
COPY --from=build /workspace/target/*.war /var/lib/tomcat9/webapps/sparkjava-hello-world-1.0.war
EXPOSE 8080
