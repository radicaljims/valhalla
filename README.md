### Valhalla, Docker-remix

Some infrastructure for building and running a Postgres container. Might one day include postgrest.

### Instructions

1. Be on a Docker host
2. Run ```./rebuild.sh```
3. Run ```./docker-psql.sh``` (default password is 'valhalla')
4. Run ```\d``` and you should see something like
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

By default the container will be running on port 5555 (peek at ```./scripts/docker-psql.sh```).

Note that something seems broken with Postgres' 9.6 image. Couldn't get POSTGRES_USER and friends to work!
