#!/bin/sh

openssl req -newkey rsa:2048 -days 365 -nodes -x509 \
    -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/CN=${DOMAIN_NAME}" \
    -keyout "/etc/ssl/${DOMAIN_NAME}.key" \
    -out "/etc/ssl/${DOMAIN_NAME}.crt" 2>/dev/null

sed -i "s/\${DOMAIN_NAME}/${DOMAIN_NAME}/g" /etc/nginx/nginx.conf

echo "nginx ON, port is 443"

exec nginx -g 'daemon off;'
