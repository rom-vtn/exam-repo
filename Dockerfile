FROM redocly/cli:latest as build
WORKDIR /usr/src/app
COPY ./openapi.yml ./src/openAPI.yaml
# ENTRYPOINT [ "redocly", "build-docs", "./src/openAPI.yaml", "./out.html" ]
RUN redocly build-docs ./src/openAPI.yaml -o /dest/out.html

FROM nginx:alpine as server
WORKDIR /usr/src/app
COPY --from=build /dest/out.html /usr/share/nginx/html/index.html
EXPOSE 80
