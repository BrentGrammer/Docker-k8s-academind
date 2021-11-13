FROM node:14-alpine 
# Node utility container - use slim version of node image
# We can use this container to build a node application on a host machine without having to install node there.

# anything run after the docker run command will run against this directory
WORKDIR /app

# omit CMD to run since we want the user flexibility to run whatever they want

# we create a bind mount when running the node-util container so we can develop the node app with the help of the node container
# docker built -t node-util .
# docker run -it -v <your-node-app-path>:/app node-util <cmd> <-- pass in any command like npm init
# now you can use npm commands and develop on your host machine using passing these commands to the container since the bind mount connects your app folder to the container.