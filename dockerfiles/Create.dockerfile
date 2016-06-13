FROM postgres:9.5

EXPOSE 5555

ENV POSTGRES_USER valhalla
ENV POSTGRES_PASSWORD valhalla
ENV POSTGRES_DB valhalla

ADD init/init.sql /docker-entrypoint-initdb.d/10-init.sql