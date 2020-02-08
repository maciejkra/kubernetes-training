# Create secret for swarm

- create file with secret
run `docker secret create <name of secret> <name of file>`

- create docker compose with secret
- secret section should use external secret

```yaml
secrets:
  <name of secret>:
    external: true
```

# Checking directly in container

```sh
docker ps --filter name=<service name> -q
docker container exec <id> cat /run/secrets/mysecret
```