FROM golang:alpine
WORKDIR /build
COPY go.mod .
COPY go.sum .
COPY main.go . 
COPY parcel.go .
COPY parcel_test.go .
COPY tracker.db .
RUN go build -o main main.go parcel.go
CMD ["/build/main"]