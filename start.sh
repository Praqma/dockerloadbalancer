docker-compose up -d
sleep 2
curl localhost
curl localhost
curl localhost

docker-compose scale app=4
docker-compose up --force-recreate -d
sleep 2
curl localhost
curl localhost
curl localhost
curl localhost
