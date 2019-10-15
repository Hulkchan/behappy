FROM nginx
MAINTAINER pea3nut "chenqihulk@163.com"

COPY ./dist/ /usr/share/nginx/html/
RUN rm /etc/nginx/conf.d/*
COPY ./custom.nginx.conf /etc/nginx/conf.d/custom.conf

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]
