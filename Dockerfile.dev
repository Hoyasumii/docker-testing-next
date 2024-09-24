FROM node:22.9 AS build

WORKDIR /app

COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm

RUN pnpm i

COPY . .

RUN pnpm start:dev

EXPOSE 3000
