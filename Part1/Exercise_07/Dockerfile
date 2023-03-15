FROM ubuntu:20.04
WORKDIR /usr/src/app
RUN apt update && apt install -y curl
COPY web-server.sh .
CMD ./web-server.sh
