FROM golang:1.14.4-alpine3.12
WORKDIR /go/src/github.com/loudposse/tfmask

COPY . .
RUN go build -o tfmask .

ENTRYPOINT ["./tfmask"]