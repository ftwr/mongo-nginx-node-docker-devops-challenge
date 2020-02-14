FROM node:10-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i && \
    chown -R node:node /usr/src/app
USER node
COPY --chown=node:node . .
CMD ["node", "app.js", "--port", "3000"]
