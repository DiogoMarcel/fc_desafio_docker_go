FROM golang:latest AS builder

WORKDIR /go/src/app

COPY ./goFiles .

RUN go build -o /app main.go

FROM scratch 

COPY --from=builder /app /app

CMD [ "/app" ]
