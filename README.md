### Valhalla, Docker-remix

Some infrastructure for building and running a Postgres container. Might one day include postgrest.

### Instructions

1. Be on a Docker host
2. Run ```./rebuild.sh```
3. Run ```./scripts/docker-psql.sh``` (default password is 'valhalla')

By default the container will be running on port 5555 (peek at ```./scripts/docker-psql.sh```).

Note that something seems broken with Postgres' 9.6 image. Couldn't get POSTGRES_USER and friends to work!
