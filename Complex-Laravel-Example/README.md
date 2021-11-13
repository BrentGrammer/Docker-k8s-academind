# Complex Setup using Laravel

## Setup

- dockerfiles folder contain Dockerfiles for our services that require custom images.

## Port Mapping

- In general, we do not need to add a port mapping if the communication is direct container to container communication.
- Ex is nginx talking to php:9000, since the php image dockerfile exposes port 9000. The host machine does not need to talk to it, just another container in the same docker network, so we just access that port through the service name domain.
