FROM alpine:latest
LABEL maintainer="Mirko Jelic"
LABEL description="Simple Web Server"
COPY package.json /server
WORKDIR /server
RUN apk update && apk add --update nodejs node-npm && npm install
COPY . /server
EXPOSE 3333/tcp
RUN node index.js
