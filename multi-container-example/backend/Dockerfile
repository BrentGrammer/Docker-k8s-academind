FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

# dockerignore file ignores node_modules and things to ensure we don't recopy them in this step
COPY . .

# Note this EXPOSE is not enough - you need to publish the ports that should be exposed when you run a container(ex: -p 80:80)
# expose the listen port for the node app (matches server.listen port)
EXPOSE 80

# use env vars for the user and password for mongo.  You can set default values after them if you want
# otherwise, these will be populated with environment vars passed into the docker container (i.e. with -e flag for cli)
ENV MONGODB_USERNAME=root 
ENV MONGODB_SECRET=secret

CMD ["npm", "start"] 
# use nodemon to get hot reloads with your bind mount set during development (don't do "node app.js" for the command)