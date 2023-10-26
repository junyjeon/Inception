#!/bin/sh

echo "Generating certificate for ${INTRA_ID}.42.fr"

if [ $? -ne 0 ]; then
echo "Failed to generate certificate"
exit 1
fi

ls -l /etc/ssl

# sed -i "s/\${DOMAIN_NAME}/${DOMAIN_NAME}/g" /etc/nginx/nginx.conf

echo "nginx ON, port is 443"

exec nginx -g 'daemon off;'
