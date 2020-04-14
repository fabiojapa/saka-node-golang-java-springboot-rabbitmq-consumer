FROM golang:1.10.0-alpine3.7 as builder
RUN apk add --update --no-cache git build-base
WORKDIR /app
RUN go get -d -v github.com/streadway/amqp
COPY consumer.go .
RUN GOOS=linux go build -a -installsuffix cgo -o consumer .

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app .
WORKDIR /app
CMD ["./consumer"]
