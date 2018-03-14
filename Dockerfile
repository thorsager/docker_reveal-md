ARG BASE_TAG=latest
FROM alpine:${BASE_TAG}
RUN apk update && apk add nodejs
RUN npm install -g reveal-md
