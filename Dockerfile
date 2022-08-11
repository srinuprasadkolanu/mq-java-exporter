FROM openjdk:8-jdk-alpine
WORKDIR /
COPY target/mq_exporter.jar mq_exporter.jar
ENTRYPOINT java -Xms2g -Xmx5g $JAVA_OPTS -jar mq_exporter.jar