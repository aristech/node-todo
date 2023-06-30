FROM node:16.20.0-alpine
WORKDIR /app
COPY package*.json ./

RUN yarn install
COPY . .
RUN yarn test
EXPOSE 8000
CMD ["node","app.js"]
