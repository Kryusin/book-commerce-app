FROM node:latest

WORKDIR /web

COPY --chown=node:node package.json /web/package.json

RUN npm i && npm cache clean --force

COPY --chown=node:node . /web

USER node

CMD ["npm", "run", "dev"]
