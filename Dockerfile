FROM node:10-alpine

WORKDIR /app
RUN adduser -D -S user1

# RUN mkdir -p ./node_modules && chown -R node:node /home/node/app

# Install app dependencies
COPY package*.json ./

# Bundle app source
COPY views views/
COPY src src/

RUN npm install

# COPY --chown=node:node . .

EXPOSE 5001

USER user1

CMD [ "npm" , "start" ]