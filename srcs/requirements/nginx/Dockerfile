FROM alpine:3.16

EXPOSE 443

RUN apk update && \
    apk add nginx && \
    apk add openssl && \
    apk add curl iputils && \
    mkdir -p /etc/ssl/private && \
    mkdir -p /etc/ssl/certs

ADD conf/default.conf /etc/nginx/http.d/default.conf
ADD tools/nginx.sh /tmp/nginx.sh

RUN dos2unix /tmp/nginx.sh && chmod +x /tmp/nginx.sh

CMD ["/bin/sh", "/tmp/nginx.sh"]
