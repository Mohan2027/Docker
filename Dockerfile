FROM centos:latest

MAINTAINER CB

RUN yum install -y nginx git && \
    mkdir /workdirectory && \
    git clone https://github.com/Mohan2027/ActorsWebpage.git /workdirectory && \
    cp /workdirectory/Maheshbabu.html /var/www/html/ && \
    systemctl start nginx && \
    systemctl enable nginx

EXPOSE 80
