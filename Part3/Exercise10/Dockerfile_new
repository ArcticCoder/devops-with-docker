# Using the -slim images instead of alpine, because the alpine images threw error:
# library initialization failed - unable to allocate file descriptor table - out of memory
# and I didn't want to submit something that required modifying Docker settings
FROM openjdk:8-jdk-slim as build
WORKDIR /usr/src/app
COPY pom.xml ./
COPY . .
RUN ./mvnw package

FROM openjdk:8-jre-slim
EXPOSE 8080
WORKDIR /usr/src/app
COPY --from=build /usr/src/app/target/docker-example-1.1.3.jar .
RUN useradd -m appuser
USER appuser
CMD ["java", "-jar", "./docker-example-1.1.3.jar"]
