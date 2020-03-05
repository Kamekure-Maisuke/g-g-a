FROM golang:1.13-alpine
WORKDIR /go/src/app
RUN apk update --no-cache && \
    apk add --no-cache git && \
    rm -rf /var/cache/apk/* && \
    go get -u github.com/gin-gonic/gin
COPY . .
EXPOSE 8080
CMD ["go","run","main.go"]