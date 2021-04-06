FROM node:14-alpine

LABEL MAINTAINER Bharath Naik "bharath.vadithya@gmail.com"

ENV REFRESHED_AT 2021-05-21
ENV NODE_ENV=production
#create app working directory
WORKDIR /listenerService
#Install app dependencies
# A wildcard is used to ensure both package.json
COPY ["./listener", "./"]

RUN npm install --production && npm install pm2 -g

# If you are building your code for production
# RUN npm ci --only=production
CMD ["pm2-runtime", "ecosystem.config.js"] 

EXPOSE 8000
