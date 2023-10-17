FROM node:18-alpine AS build
WORKDIR /home/node/app
COPY package*.json .
RUN npm i
COPY . .
RUN npx tsc

FROM node:18-alpine AS api
WORKDIR /home/node/app
RUN adduser -S nodeExo
COPY --chown=nodeExo --from=build /home/node/app/build .
USER nodeExo
CMD ["node", "index.js"]