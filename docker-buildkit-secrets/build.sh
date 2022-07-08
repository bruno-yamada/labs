#!/bin/bash

export DOCKER_BUILDKIT=1;

cat <<-EOF > .build-secrets.env
export MY_SECRET_PASSWORD=some-random-password-string
EOF

docker build \
  -t my-img \
  --progress=plain \
  --secret id=build-secrets,src=.build-secrets.env \
  .
