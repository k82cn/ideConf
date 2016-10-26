FROM ubuntu:14.04
MAINTAINER Klaus Ma <klaus1982.cn@gmail.com>

RUN apt-get update && apt-get install -y vim gdb cscope make curl tar gzip git build-essential pstack

WORKDIR /usr/local/
RUN mkdir -p /usr/local/gopath
RUN curl https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz | tar xz
ENV GOROOT /usr/local/go
ENV GOPATH /usr/local/gopath

ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH

WORKDIR /root/

COPY vim/.vim /root/.vim
COPY vim/.vimrc /root/.vimrc
COPY build_cscope_db /usr/local/bin/

CMD ["/bin/bash"]
