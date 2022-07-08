FROM alpine

RUN --mount=type=secret,id=build-secrets \
  source /run/secrets/build-secrets \
  && echo "MY_SECRET_PASSWORD is temporarily available with value:$MY_SECRET_PASSWORD"

