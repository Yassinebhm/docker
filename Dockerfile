FROM centos:7

RUN yum -y update && \

yum -y install httpd && \

yum clean all

COPY data/httpd.conf /etc/httpd/conf/httpd.conf

ADD data/html.tar.gz /var/www/html/

EXPOSE 80

ENV HOME /root

WORKDIR /root

ENTRYPOINT ["ping"]

CMD ["google.com"]