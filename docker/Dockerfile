FROM php:7.3-fpm

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Set working directory
WORKDIR /var/www

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential locales \
    libpng-dev libjpeg62-turbo-dev libfreetype6-dev \
    zlib1g-dev libzip-dev zip unzip \
    jpegoptim optipng pngquant gifsicle \
    vim git curl mysqli

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install extensions
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl
RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/
RUN docker-php-ext-install gd

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Nodejs
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install -y nodejs

# Copy existing application directory contents
COPY . /var/www

# Run Project Setup
RUN npm run prod
RUN composer install
RUN php artisan key:generate
RUN php artisan config:cache
# !!! RUN php artisan route:cache
RUN php artisan view:cache

# Copy existing application directory with required permissions
RUN chown -R www:www . /var/www

# Change current user to www
USER www

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]