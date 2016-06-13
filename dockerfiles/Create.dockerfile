FROM postgres:9.5

EXPOSE 5555

# ADD init/init.sql /docker-entrypoint-initdb.d/
ENV POSTGRES_USER valhalla
ENV POSTGRES_PASSWORD valhalla
ENV POSTGRES_DB valhalla