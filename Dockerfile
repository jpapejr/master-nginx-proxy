FROM alpine:latest
LABEL Maintainer "John Pape <jpapejr@icloud.com>"
RUN apk add --update nginx
RUN mkdir -p /run/nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY .htpasswd /.htpasswd
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
EXPOSE 80
