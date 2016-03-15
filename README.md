# nginx
reverse proxy for labs vps

docker run --name nginx --net=dmz -d \
     -v /etc/letsencrypt/live/labs.beamonpeople.se/fullchain.pem:/etc/nginx/certs/server.crt \
     -v /etc/letsencrypt/live/labs.beamonpeople.se/privkey.pem:/etc/nginx/certs/server.key \
     -p 443:443 \
     beamonlabs/nginx:latest

generera nya cert: docker run -it --rm \
    -v /etc/letsencrypt:/etc/letsencrypt \
    -p 80:80 -p 443:443 \
    xataz/letsencrypt \
    certonly --standalone \
    --agree-tos \
    -m labs@beamonpeople.se \
    -d labs.beamonpeople.se
