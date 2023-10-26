#!/bin/sh

echo "Generating certificate for ${INTRA_ID}.42.fr"

openssl req -newkey rsa:2048 -days 365 -nodes -x509 \
-subj "/C=KR/ST=Seoul/L=Gangnam-gu/O=42Seoul/CN=${INTRA_ID}.42.fr" \
-keyout "/etc/ssl/${INTRA_ID}.42.fr.key" \
-out "/etc/ssl/${INTRA_ID}.42.fr.crt"

if [ $? -ne 0 ]; then
echo "Failed to generate certificate"
exit 1
fi

ls -l /etc/ssl

sed -i "s/\${DOMAIN_NAME}/${DOMAIN_NAME}/g" /etc/nginx/nginx.conf

echo "nginx ON, port is 443"

exec nginx -g 'daemon off;'
