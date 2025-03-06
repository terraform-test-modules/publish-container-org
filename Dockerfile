# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

LABEL org.opencontainers.image.source https://github.com/terraform-test-modules/publish-container-org
# Code file to execute when the docker container starts up (`entrypoint.sh`)
# add something to trigger actions.
ENTRYPOINT ["/entrypoint.sh"]
