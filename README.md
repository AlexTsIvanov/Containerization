# Containerization

This is a work sample for the DevOps Track.

The aim of the task is to containerize an application and its associated database.

## Commands

To launch the entire stack use "bash deploy.sh"

The application should be available on "localhost:8080".

## GitHub Actions CI/CD

Created a workflow that validates the Docker services by building the stack.
When successful the main API service image is deployed to DOcker Hub.
Added an image tag based on the git commit hash.

Link to the Docker Hub image repository:

https://hub.docker.com/repository/docker/alextsivanov/apiservice

