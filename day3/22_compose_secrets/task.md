# Using secrets

- Create `secret` file with some text inside
- create new `docker-compose.yaml` with service `secret-exemple` and imag `nginx`
- add new secret section

```yaml
<??>
    secrets:
      - <secret name>

secrets:
  <secret name>:
    file: <path to file>
```

- create file `docker-compose.override.yml`
```yaml
version: '3.2'
services:
  secret-exemple:
    command: '<??>'
```
- in command display secret
- secret is located in `/run/secrets/<name>`

## Result
- run `docker-compose up -d`
- run `docker-compose logs secret-exemple` and secret should be displayed
- remove `docker-compose.override.yml`
- run `docker-compose up -d --force-recreate` and secret is not displayed

# Remove all
`docker-compose down --rmi all --volumes`
