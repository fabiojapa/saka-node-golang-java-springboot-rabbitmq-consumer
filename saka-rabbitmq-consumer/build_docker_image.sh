#!/bin/bash
sh gradlew bootJar
docker build -t fabiojapa/saka-springboot-rabbitmq-consumer .
docker push fabiojapa/saka-springboot-rabbitmq-consumer