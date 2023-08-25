FROM golang:alpine3.18 AS builder

WORKDIR /app

COPY . .

RUN go build -o appFullCycle 

FROM scratch 

WORKDIR /app

COPY --from=builder /app .

CMD [ "./appFullCycle" ]