#!/bin/bash

## Adds some "secrets" to a file
cat <<-EOF > .build-secrets.env
export MY_SECRET_PASSWORD=some-random-password-string
EOF

## Provide the file as a secret named "build-secrets"
DOCKER_BUILDKIT=1 docker build \
  -t my-img \
  --progress=plain \
  --secret id=build-secrets,src=.build-secrets.env \
  .
