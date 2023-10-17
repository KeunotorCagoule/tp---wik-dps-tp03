FROM node:18-alpine
WORKDIR /home/node/app
RUN adduser -S nodeExo
COPY --chown=nodeExo package*.json .
RUN npm i
COPY --chown=nodeExo . .
USER nodeExo
CMD ["npm", "start"]