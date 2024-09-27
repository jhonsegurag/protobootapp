FROM amazoncorretto:17-alpine
RUN apk add curl
VOLUME /tmp
COPY target/protobootapp-0.0.1-SNAPSHOT.jar protobootapp.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","protobootapp.jar"]
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar protobootapp.jar
