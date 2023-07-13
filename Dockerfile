# syntax=docker/dockerfile:1.3-labs
FROM nginx:1.25.1

COPY clash.razord.top /etc/nginx/clash.razord.top

COPY <<clash.conf /etc/nginx/conf.d/clash.conf
server {
    server_name localhost;
    listen 80;
    access_log /etc/nginx/clash.log;
    error_log /etc/nginx/clash.err;
    root clash.razord.top;
    index index.html;
}
clash.conf