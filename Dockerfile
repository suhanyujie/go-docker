FROM golang:1.14.3-buster

ENV VERSION=0.1.0
LABEL author="ifchange<ifchange@ifchange.com>" version="$VERSION"
ARG TIME_ZONE=Asia/Shanghai
ENV GOPATH=/opt/go/gopath

RUN echo "alias ll='ls --color=auto -alh'" >> ~/.bashrc \
    && mkdir -p $GOPATH \
    && echo "export GOPATH=/opt/go/gopath" >> ~/.bashrc \
    && echo "export GOBIN=$GOPATH/bin" >> ~/.bashrc \
    && ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime \ 
    && echo $TIME_ZONE > /etc/timezone \
    && echo "export GO111MODULE=on" >> ~/.bashrc \
    && echo "export GOPROXY=https://goproxy.cn" >> ~/.bashrc

CMD ["/bin/sh"]
