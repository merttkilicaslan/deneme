FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN pwd && ls -la

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
