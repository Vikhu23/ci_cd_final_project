FROM golang:1.23.2
WORKDIR /app
COPY go.mod ./
COPY *.go ./
RUN go mod download
RUN go mod tidy
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /my_app
