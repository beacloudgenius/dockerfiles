# Steps to create tunnel in Cloudflare via Docker


 [Erisa's Cloudflared Docker Image for reference only](https://github.com/Erisa/cloudflared-docker/blob/main/Dockerfile)

## Docker steps to run
   
 * docker run -v $PWD/cloudflared:/.cloudflared erisamoe/cloudflared tunnel login
 * docker run -v $PWD/cloudflared:/etc/cloudflared erisamoe/cloudflared tunnel create foobar
 * docker run -v $PWD/cloudflared:/etc/cloudflared erisamoe/cloudflared tunnel route dns foobar foobar.thecloudseminar.com

Above steps created `cloudflared` directory. Copy the `config.yaml` to that location. Make sure to give Write access if necessary.
## Example: `config.yaml`

```yaml
# tunnel: foobar
tunnel: fc2d11a1-c262-4215-bf5c-0fe5f5a97f52 (copy thid id from above steps)
credentials-file: /etc/cloudflared/fc2d11a1-c262-4215-bf5c-0fe5f5a97f52.json
ingress:
  - hostname: foobar.thecloudseminar.com
    service: http://wordpress:80
  - service: http_status:404
```
* docker compose -f 3-docker-compose-cloudflared.yaml up -d --force-recreate
* docker compose logs -f

## Post docker-compose steps to be `Run this on the host`

* https://github.com/Erisa/cloudflared-docker/issues/12
  
```
sudo sysctl -w net.core.rmem_max=2500000
sudo sysctl -w net.core.rmem_max=7500000
sudo sysctl -w net.core.wmem_max=7500000
```
  
docker run -v $PWD/cloudflared:/etc/cloudflared erisamoe/cloudflared --hostname foobar.thecloudseminar.com --name foobar --hello-world




