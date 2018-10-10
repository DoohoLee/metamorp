FROM node:9-slim

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm install -g pm2 node-gyp

COPY . .

CMD sudo node app.js

EXPOSE 3000
