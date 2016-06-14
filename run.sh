docker stop postgrest ; docker stop postgres-9.5
docker rm postgrest   ; docker rm postgres-9.5
docker-compose up -d

docker ps | grep postgres




