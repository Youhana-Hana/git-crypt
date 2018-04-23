FROM alpine:latest
MAINTAINER Youhana Hana <meyouhana@gmail.com>

# Update and install base packages
RUN apk update && apk upgrade && apk add --no-cache curl bash make gnupg git g++ make openssh openssl openssl-dev

# Clone git-crypt
RUN git clone https://github.com/AGWA/git-crypt.git /tmp/git-crypt

# Install git-crypt
RUN cd /tmp/git-crypt && make && make install PREFIX=/usr/local

