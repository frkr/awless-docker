FROM golang:stretch
WORKDIR /data
RUN apt-get update && apt-get install curl -y
RUN curl https://raw.githubusercontent.com/wallix/awless/master/getawless.sh | bash
RUN apt-get purge -y curl && apt-get autoremove -y && apt-get clean -y
