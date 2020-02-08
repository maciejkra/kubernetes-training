# Create swarm

- on first machine `docker swarm init`
- on second join using toke `docker swarm join --token <token>`

if you lost token

`docker swarm join-token manager -q`

# Check swarm on first machine

`docker node ls`
`docker node inspect <nodei d>`

# Switch manager from first machine to second

`docker node promote <second node id>`
`docker node demote <first node id>`

# How to perform maintenance

`docker node update --availability drain <nodei d>`
`docker node update --availability active <nodei d>`
