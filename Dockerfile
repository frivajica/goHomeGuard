FROM golang:1.19.4


RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    git \
    openssl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /goHomeGuard

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

EXPOSE 8090
