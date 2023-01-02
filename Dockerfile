FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME Gh-actions
ENV MONGODB_CLUSTER_ADDRESS cluster0.xo6p0bs.mongodb.net
ENV MONGODB_USERNAME izzy
ENV MONGODB_PASSWORD test123

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]