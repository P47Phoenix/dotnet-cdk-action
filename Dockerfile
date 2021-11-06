# Container image that runs your code
FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine AS base

RUN apk --update --no-cache add nodejs npm

COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
