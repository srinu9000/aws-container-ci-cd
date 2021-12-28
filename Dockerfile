FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY ./app /home/node/app/

RUN npm install

EXPOSE 8080

CMD [ "node", "/home/node/app/app.js" ]
