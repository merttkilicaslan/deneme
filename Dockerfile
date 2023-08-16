FROM node:18.17.1

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
