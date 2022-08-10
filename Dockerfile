FROM redhat/ubi8:latest

RUN yum -y update

RUN yum install -y httpd

Run yum install git -y

COPY index.html /var/www/html/index.html

EXPOSE 443

CMD apachectl -D FOREGROUND
