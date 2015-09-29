FROM golang:latest

RUN apt-get update && apt-get install -y \
  vim

RUN git clone https://github.com/broady/dotfiles /dotfiles

RUN echo 'for f in /dotfiles/rc/*; do . $f; done' >> ~/.bashrc

WORKDIR /root

CMD bash
