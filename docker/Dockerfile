FROM nginx:latest

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/index.html /usr/share/nginx/html/index.html

USER nginx

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
