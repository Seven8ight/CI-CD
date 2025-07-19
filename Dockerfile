FROM node:20-alpine

WORKDIR /app

RUN npm i -g browserify

COPY . .

RUN browserify script.js -o main.js

RUN npm i -g http-server

EXPOSE 8080

CMD [ "http-server", ".", "-p", "8080" ]