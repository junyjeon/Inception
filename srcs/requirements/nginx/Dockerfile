FROM nginx:1.24.0

# 필요한 패키지 설치 및 인증서 생성
RUN apt-get update && \
    apt-get install -y nginx ssl-cert openssl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx.key \
    -out /etc/ssl/certs/nginx.crt \
    -subj "/C=KR/ST=Seoul/L=Gangnam-gu/O=42Seoul/OU=Cadet/CN=www.junyojeo.42.fr"

# NGINX 설정 파일 복사
COPY nginx.conf /etc/nginx/sites-available/default

# 443 포트 열기
EXPOSE 443

# NGINX 실행
CMD ["nginx", "-g", "daemon off;"]
