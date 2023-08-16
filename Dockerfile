FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install react-scripts

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
