FROM joonas/alpine:f4fddc471ec2
RUN \
	apk update && \
	apk add nginx php-fpm && \
	apk add php-zlib && \
	rm -rf /var/cache/apk/* && \
	mkdir -p /DATA/htdocs && \
	chown nginx:www-data /DATA/htdocs/ && \
	mkdir -p /DATA/logs/php-fpm && \
	mkdir -p /DATA/logs/nginx && \
	mkdir -p /tmp/nginx && \
	chown nginx /tmp/nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/php-fpm.conf /etc/php/php-fpm.conf

# COPY htdocs/ /DATA/htdocs

EXPOSE 80

CMD php-fpm && nginx
