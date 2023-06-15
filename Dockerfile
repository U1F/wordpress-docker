FROM wordpress:latest

# Install Xdebug
# RUN pecl install xdebug && docker-php-ext-enable xdebug

# Add Xdebug configuration
RUN echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.mode=debug" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.start_with_request=yes" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.client_host=host.docker.internal" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.client_port=9000" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.log=/tmp/xdebug.log" >> /usr/local/etc/php/php.ini
