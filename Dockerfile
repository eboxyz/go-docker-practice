FROM golang:1.10
ENV PATH ="$GOPATH/bin:${PATH}"

RUN go get github.com/julienschmidt/httprouter
COPY . src/go-practice-docker
WORKDIR src/go-practice-docker
RUN go build -o main

EXPOSE 8080

RUN echo $(ls)
CMD ["./main"]
