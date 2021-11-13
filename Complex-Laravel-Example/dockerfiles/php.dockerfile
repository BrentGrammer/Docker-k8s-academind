# custom image on php to install dependencies needed for Laravel
FROM php:7.4-fpm-alpine 
# very slim php image and needed fpm for use with our nginx config

# standard folder on web servers to serve website from. We use this as the folder for holding our final application in our containers
WORKDIR /var/www/html

# needed php extenstions.  The image comes with this command for installing these
RUN docker-php-ext-install pdo pdo_mysql 

# we do not have a CMD/ENTRYPOINT here.  The CMD or ENTRYPOINT from the base image will be run.
# The base image from php has a default command that invokes the php interpreter.  We just want that to run so we don't need to specify our own CMD.