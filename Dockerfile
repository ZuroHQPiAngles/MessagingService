FROM artifacts.platform.avalara.io:443/orl-docker-local/java:openjdk8.432.06-alpine3.20
WORKDIR /
ADD ./target/MessagingService.jar MessagingService.jar
ENTRYPOINT ["java", "-Dprocess.name=MessagingService", "-jar", "MessagingService.jar"]
