# Compose python & redsis

- connect python:redis with redis
- use docker-compose
- use `depends_on` to have dependency on redis in python service

`docker-compose up -d  redis` should run only redis
`docker-compose up -d <python-redis>` should run redis then python

# Is there a netwrok between services?

- attach to created network

```yaml
networks:
  default:
    external:
      name: redis-network
```

- stop redis service, python should still work

Consider **command** wrapper like curl/wait-for-it

```yaml
command: ["./wait-for-it.sh", "db:5432", "--", "python", "app.py"]
```

# validate before run

```sh
docker-compose config
docker-compose config -q
```

# other commands:


```sh
docker-compose up < --force-recreate | --no-recreate | --no-build | --build >
```

```sh
docker-compose start
docker-compose stop
docker-compose restart
docker-compose pause
docker-compose unpause

docker-compose top
docker-compose events
```

`docker-compose exec <service> <command>`