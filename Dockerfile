FROM node:latest

RUN npm install pm2 -g
ADD package.json /dist/package.json
RUN mkdir /dist/node_modules && cd /dist && npm install
ADD . /src
RUN ln -s /dist/node_modules /src/node_modules

WORKDIR /src

EXPOSE 3010

ENTRYPOINT ["npm", "start"]

