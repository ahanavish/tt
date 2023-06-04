FROM node:16-alpine AS base

WORKDIR /app

COPY package*.json .

RUN npm ci --only=production

COPY . .

EXPOSE 8080

CMD ["node", "server.js"]