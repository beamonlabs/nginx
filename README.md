# nginx
reverse proxy for labs vps

docker run --name nginx --net=dmz -d \
     -v /etc/letsencrypt/live/labs.beamonpeople.se/fullchain.pem:/etc/nginx/certs/server.crt \
     -v /etc/letsencrypt/live/labs.beamonpeople.se/privkey.pem:/etc/nginx/certs/server.key \
     -p 443:443 \
     beamonlabs/nginx:latest
