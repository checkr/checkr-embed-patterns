FROM node:19.2.0

WORKDIR /usr/src/app

COPY package.json .
COPY yarn.lock .
RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 5000
