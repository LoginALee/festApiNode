FROM node:14-alpine3.16
WORKDIR /srv/app
COPY package*.json ./
RUN yarn install
COPY . .
RUN yarn run build
EXPOSE 3000
CMD ["yarn", "run", "dev"]
