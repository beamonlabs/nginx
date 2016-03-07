FROM nginx

EXPOSE 443

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d /etc/nginx/conf.d

VOLUME /etc/nginx/certs
