openssl req -x509 -nodes \
        -days 365 \
        -newkey rsa:2048 \
        -keyout /etc/ssl/private/nginx-selfsigned.key \
        -out /etc/ssl/certs/nginx-selfsigned.crt \
        -subj "/C=KR/ST=Seoul/O=42Seoul/OU=Cadet/CN=junyojeo.42.fr/"

chown nginx /etc/ssl/private/nginx-selfsigned.key
chown nginx /etc/ssl/certs/nginx-selfsigned.crt

echo "Complete set nginx!!"

exec nginx -g 'daemon off;';
