# Deploying to Production

## Note on Bind Mounts for developing:

- We need to copy files that are needed in the container for deployment and not just set a bindmount which is good for development. We should copy a snapshot of the files in a dockerfile config so they are available in the container for deployment.
- You need a COPY step in your Dockerfile to copy the bind mounted files to the container when it is built.
