# This dockerfile is for copying a snapshot of the bind mounted nginx conf so that the container has the latest snapshot for deployment
FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

# note: since this refers to a file/folder outside of the dockerfiles folder, we need to set the context to the app folder in docker-compose to make that path accessible in here
COPY nginx/nginx.conf .

# rename the conf file copied to the container to the file nginx image expects
RUN mv nginx.conf default.conf

# change work dir and copy our src code for the public folder to be in the html serving folder
WORKDIR /var/www/html

COPY src .

# nginx image has a default command which is to start the web server so we leave CMD off.