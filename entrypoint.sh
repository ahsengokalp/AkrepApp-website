#!/bin/sh

echo "window.EMAILJS_CONFIG = {
  PUBLIC_KEY: \"${EMAILJS_PUBLIC_KEY}\",
  SERVICE_ID: \"${EMAILJS_SERVICE_ID}\",
  TEMPLATE_ID: \"${EMAILJS_TEMPLATE_ID}\"
};" > /usr/share/nginx/html/config.js

# NGINX başlat
nginx -g 'daemon off;'