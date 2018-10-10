FROM node:9-slim

WORKDIR /app

COPY package*.json ./app

RUN npm install

RUN npm install -g pm2 node-gyp

COPY . ./app

EXPOSE 3000

CMD sudo pm2 start app.js
