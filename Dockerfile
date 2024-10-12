FROM redocly/cli:latest
WORKDIR /usr/src/app
COPY ./openapi.yml ./src/openAPI.yaml
ENTRYPOINT [ "redocly", "build-docs", "./src/openAPI.yaml" ]