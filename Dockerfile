FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY target/demo-0.1.0.jar /app
RUN sh -c 'touch /app/demo-0.1.0.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app/demo-0.1.0.jar" ]