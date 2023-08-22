FROM golang:latest

WORKDIR /app

COPY . . 

RUN go build -o appFullCycle 

CMD [ "./appFullCycle" ]