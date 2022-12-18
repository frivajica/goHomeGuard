FROM golang:1.16-alpine

WORKDIR /goHomeGuard

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /goHomeGuard

EXPOSE 8090

CMD [ "/goHomeGuard" ]