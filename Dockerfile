FROM nginx
ARG variation=a
COPY static/${variation}.html /usr/share/nginx/html/index.html
