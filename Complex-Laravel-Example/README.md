# Complex Setup using Laravel

## Setup

- dockerfiles folder contain Dockerfiles for our services that require custom images.

## Port Mapping

- In general, we do not need to add a port mapping if the communication is direct container to container communication.
- Ex is nginx talking to php:9000, since the php image dockerfile exposes port 9000. The host machine does not need to talk to it, just another container in the same docker network, so we just access that port through the service name domain.

## Creating a Laravel Project using the utility container:

- From the Complex-Laravel-Example folder, run: `docker-compose run --rm composer create-project --prefer-dist laravel/laravel:^7.0 .`
  - Runs just the composer utility container to create a project with the compose command in the www/html folder that is bind mounted to our src folder on host machine in the php container config

## Troubleshooting on Linux:

- Permission errors on Linux: https://www.udemy.com/course/docker-kubernetes-the-practical-guide/learn/lecture/23172898#notes
- also: https://www.udemy.com/course/docker-kubernetes-the-practical-guide/learn/#questions/12986850/
