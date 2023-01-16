FROM centos:latest

MAINTAINER NewstarCorporation

RUN dnf --disablerepo '*' --enablerepo=extras swap centos-linux-repos centos-stream-repos

RUN dnf distro-sync

RUN  yum install -y httpd

COPY index.html /var/www/html/

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]

EXPOSE 80
