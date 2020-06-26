FROM php:7.3-fpm

# Set working directory
WORKDIR /var/www

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential locales \
    libpng-dev libjpeg62-turbo-dev libfreetype6-dev \
    zlib1g-dev libzip-dev zip unzip \
    jpegoptim optipng pngquant gifsicle \
    vim git curl

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install extensions
RUN docker-php-ext-install pdo_mysql mysqli mbstring zip exif pcntl
RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/
RUN docker-php-ext-install gd

# Change uid and gid of apache to docker user uid/gid
RUN usermod -u 1000 www-data && groupmod -g 1000 www-data

# Copy existing application directory contents
COPY . /var/www
COPY --chown=www-data:www-data . /var/www

# Change current user to www-data and setup cache
USER www-data
RUN chmod -Rf 755 /var/www/storage
RUN sh scripts/regen-key-cache.sh

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]