FROM node:lts

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm i -g pnpm

RUN pnpm install

COPY . .

EXPOSE 3000

CMD [ "pnpm","start:dev" ]