# We use node to spin up the dev server and optomize React code
FROM node:14

WORKDIR /app
# copy and install npm modules first
COPY package.json .

RUN npm install
# copy remaining code (will not copy node_modules if not run since we did this in previous step)
# Be sure to add node_modules .git and Dockerfile to .dockerignore to avoid re-copying!
COPY . .

#document which port is exposed
EXPOSE 3000

CMD ["npm", "start"]
# note: if running this locally, you need to add the -it flag to the docker run command or the dev server will shutdown
# do not need to add to a network since code runs outside in the browser
# we do need to publish ports on target containers, like the backend node app.
