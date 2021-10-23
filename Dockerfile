FROM maven:3.8.1-jdk-11 AS MAVEN_BUILD
COPY . /app
WORKDIR /app
RUN mvn -f /app/pom.xml clean package

FROM bellsoft/liberica-openjdk-alpine-musl
COPY --from=MAVEN_BUILD /app/target/docker-0.1-SNAPSHOT.jar /app/target/docker.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/target/docker.jar"]

#FROM maven:3.8.1-jdk-11 AS MAVEN_BUILD
#COPY . /home/app/docker
#COPY pom.xml /home/app
#RUN mvn -f /home/app/pom.xml clean package

#FROM openjdk:11
#COPY --from=MAVEN_BUILD /home/app/target/original-docker-0.1-SNAPSHOT.jar /usr/local/lib/docker.jar
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar", "/usr/local/lib/docker.jar"]