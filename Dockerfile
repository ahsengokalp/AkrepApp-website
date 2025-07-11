FROM nginx:alpine

# NGINX config dosyan varsa kopyala
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Statik dosyaları kopyala
COPY ./*.html /usr/share/nginx/html/
COPY ./assets /usr/share/nginx/html/assets
COPY ./style.css /usr/share/nginx/html/

# Entrypoint scriptini kopyala
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Entrypoint olarak scripti ayarla
ENTRYPOINT ["/entrypoint.sh"]