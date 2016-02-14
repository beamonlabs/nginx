FROM nginx

EXPOSE 80 443

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY ssl/server.crt /etc/nginx/server.crt
COPY ssl/server.key /etc/nginx/server.key
