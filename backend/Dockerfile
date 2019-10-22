FROM openjdk:8-jdk-alpine
LABEL maintainer=chenchuk@gmail.com
ARG JAR_FILE=target/websocket-demo-0.0.1-SNAPSHOT.jar
ADD target/hack-assembler*.jar hack-assembler.jar
VOLUME /tmp
EXPOSE 8090

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/hack-assembler.jar"]
