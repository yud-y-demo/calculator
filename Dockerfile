FROM node:16-alpine3.15

WORKDIR /app

COPY package.json ./

RUN npm install
RUN npm run build

COPY . .

EXPOSE 8000
CMD [ "npm", "run", "serve-web" ]