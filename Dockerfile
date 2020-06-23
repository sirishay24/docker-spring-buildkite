FROM openjdk:8
ADD /var/lib/buildkite-agent/builds/My-Agent-on-EC2/self-37/springboot-app-buildpipeline/target/docker-spring-buildkite-0.0.1-SNAPSHOT.jar docker-spring-buildkite-0.0.1-SNAPSHOT.jar
EXPOSE 8085
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar","/app.jar"]