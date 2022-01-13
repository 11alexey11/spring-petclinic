# Build stage
FROM maven:3.6-jdk-11-slim as build
WORKDIR /spring-petclinic
COPY pom.xml ./
COPY src ./src
RUN mvn spring-javaformat:apply
RUN mvn clean package

# Package stage
FROM openjdk:11-jre-slim
COPY --from=build /spring-petclinic/target/*.jar /spring-petclinic.jar
EXPOSE 8000
ENTRYPOINT ["java"]
CMD ["-jar", "-Dserver.port=8000", "spring-petclinic.jar"]
