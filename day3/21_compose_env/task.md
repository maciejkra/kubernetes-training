# Display env 

- Create compose file with nginx
- Add `environment` array
- display env

# create env file

`vim .env`
```env
<key>=<value>
workshop=docker
```

- attach file using `env_file`
- change one env in `environment` section to use one key from .env file eg. `topic="workshop-${workshop}"`

- display env again
