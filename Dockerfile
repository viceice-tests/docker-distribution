# replaced by CI
ARG MCR_PROXY=mcr.microsoft.com
FROM ${MCR_PROXY}/dotnet/sdk:10.0.201-azurelinux3.0@sha256:52066c5f2566b1e251f0a7ff6c9380d655054d560d6f88a724d23b72448b9a3a AS build

WORKDIR /source
# build to /app

FROM ${MCR_PROXY}/dotnet/runtime-deps:10.0.5-azurelinux3.0-distroless-extra@sha256:ec811f8c6b94206b7bcc307754c2dc1a2f90983b24ac96956830d82ee2aaca98

WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["./Some.Service"]
