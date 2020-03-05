FROM golang:1.13-alpine
WORKDIR /go/src/app
RUN apk update --no-cache && \
    apk add --no-cache alpine-sdk git && \
    rm -rf /var/cache/apk/* && \
    go get -u github.com/gin-gonic/gin && \
    go get github.com/jinzhu/gorm && \
    go get github.com/mattn/go-sqlite3
COPY . .
EXPOSE 8080
CMD ["go","run","main.go"]