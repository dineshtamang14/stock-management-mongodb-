FROM node:16.17-alpine3.15
LABEL "Name"="stock management web app"
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn install 
ENV PORT=3000
COPY . .
CMD ["node", "index.js"]