# Debian 기반 이미지 사용
FROM debian:buster-slim

# 필요한 패키지 설치 및 인증서 생성
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nginx openssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/cert.key \
    -out /etc/ssl/certs/cert.pem \
    -subj "/C=KR/ST=Seoul/L=Gangnam-gu/O=42Seoul/OU=Cadet/CN=www.junyojeo.42.fr"

# NGINX 설정 파일 복사
COPY conf/nginx.conf /etc/nginx/nginx.conf

# 443 포트 열기
EXPOSE 443

# NGINX를 실행합니다.
CMD ["nginx", "-g", "daemon off;"]
