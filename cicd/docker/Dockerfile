# Loads a Slim Alpine JDK11 Base Image
FROM adoptopenjdk/openjdk11:alpine-slim

WORKDIR apps

# Run the application with non-Root Privileges for security
RUN addgroup -S spring && adduser -S spring -G spring

USER spring:spring

# Copy over the different layers of the .jar
COPY ./target/*.jar /apps/spring-app.jar

ENV JAVA_OPTS="-Xverify:none"
ENV JAVA_OPTS="$JAVA_OPTS -Dsun.misc.URLClassPath.disableJarChecking=true"

EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -jar spring-app.jar