#Sample Dockerfile for NodeJS Apps

FROM node:16

ENV NODE_ENV=production

WORKDIR /app

RUN npm install --production

COPY . .

EXPOSE 5000

CMD [ "start.sh", "index.js" ]
