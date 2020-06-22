FROM openjdk:8
ADD target/docker-spring-buildkite-0.0.1-SNAPSHOT.jar docker-spring-buildkite-0.0.1-SNAPSHOT.jar
EXPOSE 8085
ENTRYPOINT ["java", "-jar","docker-spring-buildkite-0.0.1-SNAPSHOT.jar"]