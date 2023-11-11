FROM alpine:3.18

EXPOSE 443

RUN apk update && \
    apk add nginx && \
    apk add openssl && \
    apk add curl iputils && \
    mkdir -p /etc/ssl

ADD conf/default.conf /etc/nginx/http.d/default.conf
ADD tools/nginx.sh /usr/bin/nginx.sh

CMD ["/bin/sh", "/usr/bin/nginx.sh"]
