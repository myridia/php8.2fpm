FROM php:8.2-fpm
RUN apt-get update && apt-get install -y \
		libfreetype-dev \
		libjpeg62-turbo-dev \
		libpng-dev \
		emacs-nox \
		ack \                                
	&& docker-php-ext-configure gd --with-freetype --with-jpeg \
	&& docker-php-ext-install -j$(nproc) gd
RUN docker-php-ext-install mysqli
RUN cd /usr/local/etc/php/conf.d/ && \
echo 'memory_limit = 2G' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini

