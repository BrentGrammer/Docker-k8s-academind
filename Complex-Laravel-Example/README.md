# Complex Setup using Laravel

## Setup

- dockerfiles folder contain Dockerfiles for our services that require custom images.

## Port Mapping

- In general, we do not need to add a port mapping if the communication is direct container to container communication.
- Ex is nginx talking to php:9000, since the php image dockerfile exposes port 9000. The host machine does not need to talk to it, just another container in the same docker network, so we just access that port through the service name domain.

## Creating a Laravel Project using the utility container:

- From the complex-laravel-example folder, run: `docker-compose run --rm composer create-project --prefer-dist laravel/laravel:^7.0 .`

  - Runs just the composer utility container to create a project with the compose command in the www/html folder that is bind mounted to our src folder on host machine in the php container config
  - If Errors like 500 are seen, change the version of laravel above. see q and a in course.

- Set .env in `src/.env` after generating the laravel project with values from your dependency env files (i.e. mysql.env)
  - **Do not use 127.0.0.1 for the DB_HOST! We just use `mysql` the name of the database service which docker translates to an IP of the container the mysql database is running, not our localhost.**

# Start the app:

- Start the app services by running docker-compose in targeted mode (excludes the utility containers we don't need for the app to run)
  - `docker-compose up -d --build server`
  - the server has a depends_on block in the docker-compose for php and mysql services which are started automatically if not running when server is started with that
- Visit localhost:8000 to see the app in the browser

## Utility Containers

- We can use the npm and artisan utility containers setup in the docker-compose by using the docker run commands when the php/server/mysql services are running:
  - `docker-compose run --rm artisan migrate` runs the php artisan migrate command for example

# Troubleshooting on Linux:

- Permission errors on Linux: https://www.udemy.com/course/docker-kubernetes-the-practical-guide/learn/lecture/23172898#notes
- also: https://www.udemy.com/course/docker-kubernetes-the-practical-guide/learn/#questions/12986850/
- If Errors like 500 are seen, change the version of laravel in the creating a laravel project section command.
