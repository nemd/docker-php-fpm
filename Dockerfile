FROM alpine:3.6

MAINTAINER nemrod <michal@reaper.pl>

RUN apk add --update-cache php7-fpm wget unzip

RUN adduser -D -H -S -u 100 nginx

COPY php-fpm.conf /etc/php7/php-fpm.conf
COPY php.ini /etc/php7/conf.d/50-setting.ini

EXPOSE 6000

CMD CMD ["php-fpm7", "-F"]
