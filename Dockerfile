# This is the

FROM nginx:mainline-alpine
COPY docker/static/ /usr/share/nginx/html/
