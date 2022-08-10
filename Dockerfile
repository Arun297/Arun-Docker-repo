FROM redhat/ubi8:latest

RUN yum -y update

RUN yum install -y httpd

COPY index.html /var/www/html/index.html

EXPOSE 443

CMD apachectl -D FOREGROUND
