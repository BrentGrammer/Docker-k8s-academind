# custom image on php to install dependencies needed for Laravel
FROM php:7.4-fpm-alpine 
# very slim php image and needed fpm for use with our nginx config

# standard folder on web servers to serve website from. We use this as the folder for holding our final application in our containers
WORKDIR /var/www/html

# Copy src files snapshot into container when it's built to get the latest snapshot of the files (needed for deployment)
# note: since this refers to a file/folder outside of the dockerfiles folder, we need to set the context to the app folder in docker-compose to make that path accessible in here
COPY src .

# needed php extenstions.  The image comes with this command for installing these
RUN docker-php-ext-install pdo pdo_mysql 

# the image restricts read and write access so we get an error when copying files to it
# We need to give our container write access to certain folders we want to write/copy to:
# www-data user is the default user created by the image which we use here
RUN chown -R www-data:www-data /var/www/html

# we do not have a CMD/ENTRYPOINT here.  The CMD or ENTRYPOINT from the base image will be run.
# The base image from php has a default command that invokes the php interpreter.  We just want that to run so we don't need to specify our own CMD.