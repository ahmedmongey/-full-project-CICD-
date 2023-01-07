FROM centos:latest 
RUN yum install -y httpd \
    zip\
    unzip \
ADD https://www.free-css.com/free-css-templates/page254/photogenic.zip /var/www/html 
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvp photogenic/* .
RUN rm photogenic.zip photogenic
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 22
