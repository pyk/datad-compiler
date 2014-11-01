FROM bayu/goamd64:runtime2
MAINTAINER Bayu Aldi Yansyah <bayualdiyansyah@gmail.com>

# grab all dependencies
RUN go get github.com/lib/pq

# setting env for static linked binary
ENV CGO_ENABLED 0
ENV GOOS linux
ENV GOARCH amd64

# setting default workdir on apps directory
WORKDIR /root/src/github.com/pyk/datad