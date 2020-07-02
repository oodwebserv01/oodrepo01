FROM centos:7
MAINTAINER Mr.Kritsana Wuttisin
RUN yum -y install gcc openssl-devel apr-devel apr-util-devel wget make
RUN yum -y install httpd ; yum clean all
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
RUN yum -y install xclock xauth ; yum clean all
EXPOSE 80
