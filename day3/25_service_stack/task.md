# Create service on swarm

`docker service create --name ngnx -p 80:80 nginx`

- access by browser
- scale to 3 replicas
- what happens?
- remove with `rm`

- drain one node
- what heppens?

# Run only on worker

`docker service create --name test --constraint "node.role == worker" -p:80:80/tcp nginx`

```sh
docker service inspect test --pretty

docker service ls

docker node ps <node_name>
```

# Creat stack

- Create `docker-compose.yaml`
- Add section to service

```yaml
deploy:
  replicas: 3
```

- deploy stack
`docker stack deploy --orchestrator=swarm --compose-file=docker-compose.yaml <stack name>`

```sh
docker stack ls
docker stack ps <stack name>
docker stack services <stack name>
docker service ps <service from stack>
```

# Concat composes

- Create new docker-compose.yaml ready to be stack
- use previous stack name
- new services will be add to stack

clean all
`docker stack rm <stack name>`