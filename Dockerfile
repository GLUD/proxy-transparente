FROM golang:1-alpine
LABEL maintainer "Sebastian Tabares Amaya <sytabaresa@gmail.com>"

RUN apk add -U git bash

WORKDIR /go/src/app
RUN git clone  https://github.com/ryanchapman/go-any-proxy . && go-wrapper download && ./make.bash
RUN go-wrapper install

COPY ./docker_entrypoint.sh /entrypoint
ENTRYPOINT ["/entrypoint"]
