# DELETE ALL and DO IT AGAIN

docker compose -f 2-docker-compose-wordpress.yaml down
docker volume rm -f $(docker volume ls -q)

docker compose -f 2-docker-compose-wordpress.yaml up  -d

# RESTART

docker compose -f 2-docker-compose-wordpress.yaml up  -d --force-recreate
