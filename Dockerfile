FROM golang:1.14

WORKDIR /srv
COPY go.sum go.mod ./
RUN go.sum go.mod ./

COPY . .

RUN go build -o /bin/app .

ENTRYPOINT ["/bin/app"]

