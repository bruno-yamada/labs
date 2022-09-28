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

## Validating

You can validate that the secret is not present in the built image buy running
the command below and inspecting the image by yourself:

```bash
docker run -it --rm my-img bash
```

## Warning

Although buildkit removes the secret from the layer, the commands executed can
do whatever they want with the secrets values, so arbitrary code can copy the
secret (or parts of it) to other places, thus exposing the secrets, so if you
need a container image without any exposed secrets, make sure you know what the
commands executed are doing
