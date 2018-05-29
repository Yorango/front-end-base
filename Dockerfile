FROM node:5.4

# install node requirements
WORKDIR /code
COPY ./package.json ./package.json
RUN npm install -qq

# run watch script by default when container is run
CMD npm run watch
