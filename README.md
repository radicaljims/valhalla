### Valhalla, Docker-remix

Some infrastructure for building and running a Postgres container. ~~Might one day include postgrest~~.

*Now with 100% more ```postgrest```! See the Docker Compose section!*

### Instructions

1. Be on a Docker host
2. Run ```./scripts/rebuild_postgres_container.sh```
3. Run ```./docker-psql.sh``` to enter the container
4. Type ```\d``` and you should see something like
    ```
    Password for user valhalla:
    psql (9.5.0, server 9.5.3)
    Type "help" for help.

    valhalla=# \d
    List of relations
    Schema |     Name      |   Type   |  Owner
    --------+---------------+----------+----------
    public | greets        | table    | valhalla
    public | greets_id_seq | sequence | valhalla
    (2 rows)
    ```

5. (Ctrl-D will exit you)

By default the container will be running on port 5555 (peek at ```./scripts/docker-psql.sh```).

Note that something seems broken with Postgres' 9.6 image. Couldn't get POSTGRES_USER and friends to work!

### Docker Compose

If you want you can have ```docker-compose``` take care of building the postgres container AND, at the same time, pull down ```postgrest``` and start up a local service so you can have an automatic REST API for your data!

1. Run ```./run.sh```
2. Run ```curl localhost:3000``` and observe

    ```
    [{"schema":"public","name":"greets","insertable":true}]
    ```
