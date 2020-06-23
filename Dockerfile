FROM openjdk:8
ADD target/docker-spring-buildkite-0.0.1-SNAPSHOT.jar docker-spring-buildkite-0.0.1-SNAPSHOT.jar
EXPOSE 8085
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar","/app.jar"]