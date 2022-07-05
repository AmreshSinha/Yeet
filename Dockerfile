FROM node:16-alpine

ENV NODE_ENV production
ENV NODE_OPTIONS "--max-old-space-size=2048"

COPY package*.json ./

RUN npm install
RUN npm install -g nodemon

COPY . .

EXPOSE 3000

CMD ["nodemon", "index.js"]
