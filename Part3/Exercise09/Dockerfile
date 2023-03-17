FROM golang:1.16.15-alpine3.15 as build-stage
WORKDIR /usr/src/app
COPY . .
RUN adduser -D appuser && CGO_ENABLED=0 go build

FROM scratch
EXPOSE 8080
ENV REQUEST_ORIGIN=http://devops:5000
COPY --from=build-stage /usr/src/app/server /
COPY --from=build-stage /etc/passwd /etc/passwd
USER appuser
CMD ["/server"]
