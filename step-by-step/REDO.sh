# DELETE ALL

docker compose -f 2-docker-compose-wordpress.yaml down
docker volume rm -f $(docker volume ls -q)

# BEGIN

docker compose -f 2-docker-compose-wordpress.yaml up  -d

# RESTART

docker compose -f 2-docker-compose-wordpress.yaml up  -d --force-recreate
