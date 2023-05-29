# syntax=docker/dockerfile:1
# BC It pack app to container => It need know what is environment to run?
FROM node:12-alpine 
RUN apk add --no-cache python3 g++ make
#  Create folder in app
WORKDIR /app
COPY . .
RUN yarn install --production
# Guide how docker run this image
CMD ["node","src/index.js"]