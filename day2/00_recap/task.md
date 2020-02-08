# Write Dockerfile 

Use
```Dockerfile
ENV
COPY
RUN
EXPOSE
VOLUME
ENTRYPOINT
CMD
```

# Logs


Follow logs
`logs -f`

```
docker container logs --tail 5 nginx
```

# Possibility to create image from container
commit current container
```
docker container commit <container_name> <REPOSITORY>:<TAG>
```
