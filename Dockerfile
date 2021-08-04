FROM nginx
RUN mkdir -p /srv/DOMAIN_com/current/public && \
    mkdir -p /etc/ssl/private/DOMAIN/

COPY html/maintenance.html /srv/DOMAIN_com/current/public/maintenance.html
COPY ssl/DOMAIN.com.crt /etc/ssl/private/DOMAIN/DOMAIN.com.crt
COPY ssl/DOMAIN.com.key /etc/ssl/private/DOMAIN/DOMAIN.com.key
COPY conf/maint.conf /etc/nginx/conf.d/maint.conf
COPY html/styles.css /srv/DOMAIN_com/current/public/styles.css
COPY html/maint_logo.svg /srv/DOMAIN_com/current/public/maint_logo.svg
