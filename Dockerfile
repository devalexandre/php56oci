FROM alephp/cente-apache-php56
MAINTAINER Alexandre E Souza <alexandre@indev.net.br>
WORKDIR '/var/www'
RUN yum clean all
RUN yum update -y 
RUN yum install -y unzip 
# -----------------------------------------------------------------------------
# Set ports
# -----------------------------------------------------------------------------
EXPOSE 80 443

# -----------------------------------------------------------------------------
# Start
# -----------------------------------------------------------------------------
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]

