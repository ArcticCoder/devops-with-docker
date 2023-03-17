FROM docker:23.0.1-cli
WORKDIR /usr/src/app
COPY ./builder.sh ./builder.sh
RUN apk add git
ENTRYPOINT ["/usr/src/app/builder.sh"]
