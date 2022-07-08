FROM alpine

RUN apk add bash

# this RUN layer will have the secret available 
RUN --mount=type=secret,id=build-secrets \
  source /run/secrets/build-secrets \
  && echo "MY_SECRET_PASSWORD is temporarily available with value:$MY_SECRET_PASSWORD"

# to validate, since the secret is not mounted, it won't be available in the line below
RUN ls -la /run/secrets
