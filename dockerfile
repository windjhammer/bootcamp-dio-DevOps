FROM node:lts-alpine

WORKDIR /usr/src/app2
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD ["node", "server.js"]

