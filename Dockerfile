FROM centos:7
MAINTAINER JA

ENV container docker

WORKDIR /home

RUN yum -y install httpd

ADD . . 
RUN chmod 777 ./httpd-foreground
EXPOSE 80
CMD ["./httpd-foreground"]
