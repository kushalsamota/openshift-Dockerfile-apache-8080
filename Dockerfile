FROM docker.io/centos:centos7
RUN  yum install httpd -y
RUN  echo "Hello Everyone" > /var/www/html/index.html
RUN  sed -ri -e "/^Listen 80/c\Listen 8080" /etc/httpd/conf/httpd.conf
CMD  ["/usr/sbin/httpd","-D","FOREGROUND"]
