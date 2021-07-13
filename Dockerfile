## -*- docker-image-name: "morishoji/nginx-morishozi.net" -*-
FROM nginx:alpine

WORKDIR /etc/nginx/

COPY conf/*.conf conf.d/

RUN mv nginx.conf org.conf && cat org.conf conf.d/mail.conf > nginx.conf && rm org.conf conf.d/mail.conf

VOLUME /etc/letsencrypt
EXPOSE 80 443 993

# ENTRYPOINT ["/docker-entrypoint.sh"]
# CMD ["nginx","-g","daemon off;"]
