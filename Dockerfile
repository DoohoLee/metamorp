FROM node:9-slim

WORKDIR /app

COPY package*.json ./app

RUN npm install

RUN npm install -g pm2 node-gyp

COPY . ./app

CMD sudo node app.js &

EXPOSE 3000
