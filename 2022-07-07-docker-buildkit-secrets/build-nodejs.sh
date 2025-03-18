#!/bin/bash

## Build .npmrc
export NPM_USERNAME=somevalue
export NPM_PASSWORD=somevalue
if [ -f ".npmrc.tpl" ]; then
  envsubst < .npmrc.tpl > .npmrc
fi

## Provide the file as a secret named "build-secrets"
DOCKER_BUILDKIT=1 docker build \
  -t my-img \
  --progress=plain \
  --secret id=npmrc,src=.npmrc \
  .
