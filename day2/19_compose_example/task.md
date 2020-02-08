# Compose task

in `01_build` run `docker-compose up -d`

verify running service

`docker-compose ps`

# Create compose file for nginx

- create index.htm and mount with `volumes` in yaml to `/usr/share/nginx/html/`
- use image `nginx:1.15.5`
- add service with `krajewskim/python-api:redis` image and expose on port `5002`
- run single service `<?> run <?>`
- scale service `<?> -d --scale <service>=<number>`
- add `depends_on:` to python to depend on redis
- remove containers with compose `rm`
- `down` stops & removes all stuff (see help)

# check containers 

see exited containers

```sh
docker container ls -a --filter "status=exited"
```

enter into service

```sh
docker-compose exec web /bin/bash
```

# Load balancing

- remove port forward
- scale web
- execute curl from python to web `docker-compose exec pyredis curl web`
- see logs for web from docker-compose
- see logs directly from docker
