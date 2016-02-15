# Apache and PHP5 in a container
#
# VERSION               0.0.1
#
############################################

FROM resin/rpi-raspbian:wheezy
MAINTAINER Sasyan Valentin <https://github.com/VSasyan>

RUN apt-get update && \
    apt-get -y install apache2 php5 libapache2-mod-php5 && \
    apt-get autoremove && apt-get clean

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
RUN rm /var/www/html/index.html

# Load php.ini to /etc/php5/apache2/php.ini
COPY php.ini /etc/php5/apache2/php.ini

# Copy web site files to /var/www/html
COPY web_site /var/www

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
