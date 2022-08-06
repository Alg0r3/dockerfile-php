FROM php:8.1-fpm

# Install Xdebug
RUN pecl install xdebug-3.1.5 \
	&& docker-php-ext-enable xdebug \
	&& echo "xdebug.mode=coverage,debug,develop" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
	&& echo "xdebug.client_host=host.docker.internal" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

