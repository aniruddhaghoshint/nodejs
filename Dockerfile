FROM node:10-alpine

RUN mkdir -p /home/ubuntu/node/node_modules && chown -R root:root /home/ubuntu/node

WORKDIR /home/ubuntu/node

COPY package*.json ./

USER root

RUN npm install

COPY --chown=root:root . .

EXPOSE 8080

CMD [ "node", "app.js" ]
