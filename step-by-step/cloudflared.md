# https://github.com/Erisa/cloudflared-docker/blob/main/Dockerfile

docker run -v $PWD/cloudflared:/.cloudflared erisamoe/cloudflared tunnel login
docker run -v $PWD/cloudflared:/etc/cloudflared erisamoe/cloudflared tunnel create foobar


docker run -v $PWD/cloudflared:/etc/cloudflared erisamoe/cloudflared tunnel route dns foobar foobar.thecloudseminar.com

# docker run -v $PWD/cloudflared:/etc/cloudflared erisamoe/cloudflared --hostname foobar.thecloudseminar.com --name foobar --hello-world

docker compose up -d --force-recreate
docker compose logs -f



config.yaml

# tunnel: foobar
tunnel: asdasdasdasd
credentials-file: /etc/cloudflared/asdasdasdasd.json
ingress:
  - hostname: foobar.thecloudseminar.com
    service: http://wordpress:80
  - service: http_status:404


Run this on the host

https://github.com/Erisa/cloudflared-docker/issues/12

	sudo sysctl -w net.core.rmem_max=2500000
