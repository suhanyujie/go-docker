FROM golang:1.14.3-buster

ENV TZ=Asia/Shanghai
ENV VERSION=0.1.0
LABEL author="ifchange<ifchange@ifchange.com>" version="$VERSION"

RUN echo "alias ll='ls --color=auto -alh'" >> ~/.bashrc

CMD ["/bin/sh"]
