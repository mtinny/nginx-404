FROM nginx

RUN sed -i -e 's/user  nginx;//g' /etc/nginx/nginx.conf  && \
    chown nginx /var/cache/nginx/ && \
    chmod 777 /var/run/
COPY default.conf /etc/nginx/conf.d/default.conf
COPY 404.html /usr/share/nginx/html/404.html
USER 101
