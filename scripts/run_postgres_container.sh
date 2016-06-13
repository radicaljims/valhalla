docker stop postgres-9.5 && docker rm postgres-9.5
# docker run -e POSTGRES_USER=valhalla -e POSTGRES_PASSWORD=valhalla -e POSTGRES_DB=valhalla --name postgres-9.5 -p 5432:5432 --volumes-from postgres9.5-data postgres-9.5
docker run -d --name postgres-9.5 -p 5555:5432 --volumes-from postgres9.5-data postgres-9.5
