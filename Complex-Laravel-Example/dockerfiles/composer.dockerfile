# Utility container for composer for our use and app use in containers
FROM composer:latest

# if we use composer to create a laravel app it will be mirrored back to our src folder (setup in docker-compose.yaml) on our machine, which is also bound to the html path on the php container
# where our code will be on our containers which will be bind mounted to our host src code folder
WORKDIR /var/www/html
# we use the official image but here we can now use an ENTRYPOINT for utility purposes
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]

# You can now create a laravel project using this utility container by running it specifically with:
# docker-compose run --rm composer create-project --prefer-dist laravel/laravel:^7.0 .