FROM node:24-alpine3.22
USER node
WORKDIR /app
COPY --chown=node:node src/package*.json .
RUN npm install
COPY --chown=node:node src/ .
EXPOSE 8080
CMD [ "node", "server.js" ]