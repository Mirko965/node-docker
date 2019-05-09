FROM alpine:latest
LABEL maintainer="Mirko Jelic"
LABEL description="Simple Web Server"
WORKDIR /server
COPY package.json /server
RUN apk add --no-cache bash
RUN apk update && apk add --update nodejs nodejs-npm && npm install
COPY . /server
EXPOSE 3333/tcp
CMD ["node", "index.js"]
