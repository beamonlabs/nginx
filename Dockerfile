FROM nginx

EXPOSE 80 443

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/default.conf /etc/nginx/conf.d/default.conf

VOLUME /etc/nginx/certs
