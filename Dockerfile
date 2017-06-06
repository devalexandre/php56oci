FROM alephp/cente-apache-php56
MAINTAINER Alexandre E Souza <alexandre@indev.net.br>
WORKDIR '/var/www'
RUN yum clean all
RUN yum update -y 
RUN yum install -y unzip 
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN mv composer.phar /usr/local/bin/composer
RUN sed -i 's/index.html/index.html index.php/g' /etc/httpd/conf/httpd.conf
# -----------------------------------------------------------------------------
# Set ports
# -----------------------------------------------------------------------------
EXPOSE 80 443

# -----------------------------------------------------------------------------
# Start
# -----------------------------------------------------------------------------
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]

