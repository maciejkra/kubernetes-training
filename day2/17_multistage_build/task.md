# Build & run java spring

`docker image build -t full-spring ./full_spring`
`docker container run --rm -p 8080:8080 full-spring`

- list files in first image
- list image in extracted

# Build base java image using multistage

`docker image build -t full-spring:multistage -f ./full_spring/Dockerfile-multi ./full_spring`


- Use `COPY` command for container to copy jar using stage
- Use copied file in second stage to build smaller image

- Check difference in image sizes