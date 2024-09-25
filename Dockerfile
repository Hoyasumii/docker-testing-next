FROM node:22.9.0-alpine3.20

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn

COPY . .

RUN yarn start:build
RUN yarn --production && yarn cache clean

EXPOSE 3000

CMD ["yarn", "run", "start:run"]
