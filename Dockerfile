FROM openjdk:8-jdk-alpine
WORKDIR /
COPY target/mq_exporter.one-jar.jar mq_exporter.jar
COPY src/main/resources/exporter_config.yaml exporter_config.yaml 
ENTRYPOINT java -Xms2g -Xmx5g $JAVA_OPTS -jar mq_exporter.jar ./exporter_config.yaml