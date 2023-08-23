FROM amazoncorretto:17-alpine3.18-jdk

WORKDIR apps

# Run the application with non-Root Privileges for security
RUN addgroup -S spring && adduser -S spring -G spring

USER spring:spring

# Copy over the different layers of the .jar
COPY ./target/*.jar /apps/spring-app.jar

ENV	SPRING_PROFILE default
ENV JAVA_OPTS="-Xverify:none"
ENV JAVA_OPTS="$JAVA_OPTS -Dsun.misc.URLClassPath.disableJarChecking=true"

EXPOSE 8080

ENTRYPOINT exec java $JAVA_OPTS -Dspring.profiles.active=${SPRING_PROFILE} -jar spring-app.jar

# docker build -t symplesims/user-service:loc-1.0 .
# docker build -t symplesims/user-service:loc-1.0 -f ./cicd/docker/Dockerfile .
