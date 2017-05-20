docker stop postgrest ; docker stop valhalla-running
docker rm postgrest   ; docker rm valhalla-running
docker-compose up --build -d

docker ps | grep postgres
