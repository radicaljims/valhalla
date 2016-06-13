### Valhalla, Docker-remix

Some infrastructure for building and running a Postgres container. Might one day include postgrest.

### Instructions

1. Be on a Docker host
2. Run ```./rebuild.sh```
3. Run ```./scripts/docker-psql``` (default password is 'valhalla')


Note that something seems broken with Postgres' 9.6 image. Couldn't get POSTGRES_USER and friends to work!
