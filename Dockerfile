FROM node:6

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install pm2 -g

COPY . .

CMD ["pm2-runtime", "app.js"]

EXPOSE 80
