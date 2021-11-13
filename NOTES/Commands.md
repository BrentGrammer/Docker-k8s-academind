# CLI Commands

## Logs

- docker logs <containerid/name>

## Attach to a detached container

- docker container attach <container>

## Start in interactive mode

- docker run -it <container>

## Exec - run commands not specified in the Dockerfile

- docker exec <runningcontainername> <cmd>
  - `docker exec -it node-container npm init
    - (-it (optional) puts you in interactive mode to provide input if necessary)
- Could be useful for things like reading log files, etc. without interrupting the container CMD

## Override default CMD that runs when a container starts:

- docker run <containerimage> <cmd>
  - ex: `docker run -it node npm init`
