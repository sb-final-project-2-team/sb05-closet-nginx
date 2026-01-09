FROM nginx:latest

# 기존 기본 설정 제거
RUN rm /etc/nginx/conf.d/default.conf

# 우리 설정 파일 복사
COPY default.conf /etc/nginx/conf.d/default.conf

# 정적 리소스 복사
COPY dist/ /usr/share/nginx/html/

# Nginx는 컨테이너 내부에서 항상 80 포트
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
