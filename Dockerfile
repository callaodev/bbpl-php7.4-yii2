FROM yiisoftware/yii2-php:7.4-apache

RUN docker-php-ext-install calendar && docker-php-ext-configure calendar

RUN sed -i -e 's|/app/web|/app/api/web|g' /etc/apache2/sites-available/000-default.conf
