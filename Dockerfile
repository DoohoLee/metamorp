FROM node:6

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g pm2

COPY . .

EXPOSE 3000

CMD ["pm2-docker", "app.js"]
