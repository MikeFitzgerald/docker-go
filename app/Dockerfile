FROM ubuntu:14.04

ENV APP_VER 1.0

WORKDIR /

# Routine system updates
RUN apt-get update && \
    apt-get -yq install git wget

# Set directories (/go for the Go tools; /go-code for the GOPATH)
RUN mkdir /go
RUN mkdir /go-code
RUN mkdir /go-code/bin
RUN mkdir /go-code/src

# Download and install Go
RUN wget https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz -P /go
RUN tar -zxvf /go/go1.5.1.linux-amd64.tar.gz
RUN rm /go/go1.5.1.linux-amd64.tar.gz

# Set Go Environment Variables
ENV GOROOT /go
ENV PATH $GOROOT/bin:$PATH
ENV GOPATH /go-code
ENV PATH $GOPATH/bin:$PATH

EXPOSE 8080

# CMD ["/root/startup.sh"]
