FROM golang:1.19.4-alpine

WORKDIR /goHomeGuard

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

# RUN go build -o /goHomeGuard

# EXPOSE 8090

# CMD [ "/goHomeGuard" ]

# FROM docker:dind
# RUN apk add --no-cache go
# RUN go version