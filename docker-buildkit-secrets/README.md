# Docker's buildkit and secret

## Introduction
Docker's buildkit provides a `secret` functionality, that we can use to make
secrets available during build time, with the certaintity that they will be
removed from the layers after and thus from the final build

## Use cases
- add credentials for private artifact registries (npm, pip) without it being
  added to the container image

## How it works
3 simple steps:
- build with buildkit enabled
- provide the secrets to the `docker build` command
- mount the secrets when you call `RUN` inside your `Dockerfile`

## In practice
- [build.sh](./build.sh) enables buildkit and executes `docker build` with the
  `--secret` param
- [Dockerfile](./Dockerfile) makes use of provided secret
