FROM amazoncorretto:11.0.4

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /app

ADD ./build/libs/*.jar /app/saka-rabbitmq-consumer.jar

RUN chmod 700 -R /app/

EXPOSE 8080

CMD [ "java", "-jar", "saka-rabbitmq-consumer.jar" ]