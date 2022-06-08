FROM node:latest
ENV NODE_ENV development
# Create app directory
WORKDIR /app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available
COPY package*.json ./

RUN npm install && npm i web-vitals --save-dev
# Bundle app source into your dockerfile
COPY . .

EXPOSE 3000
CMD ["npm", "start"]

