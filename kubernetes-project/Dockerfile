FROM centos:latest 
MAINTAINER ahmed.mahmoud.mongey@gmail.com
RUN yum -y install httpd 
WORKDIR /var/www/html/
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80



