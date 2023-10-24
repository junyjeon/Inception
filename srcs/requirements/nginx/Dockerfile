# Debian 기반 이미지 사용
FROM debian:buster-slim

# 필요한 패키지 설치
RUN apt-get update && \
    apt-get install -y nginx ssl-cert && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# NGINX 설정 파일 복사
COPY nginx.conf /etc/nginx/sites-available/default

# SSL 인증서와 키 복사
COPY cert.pem /etc/ssl/certs/
COPY cert.key /etc/ssl/private/

# 443 포트 열기
EXPOSE 443

# NGINX 실행
CMD ["nginx", "-g", "daemon off;"]
