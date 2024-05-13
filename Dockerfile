# Use a different base image that doesn't rely on the 'appstream' repository
FROM centos:7

MAINTAINER CB

# Install necessary packages using specific repositories
RUN yum install -y epel-release && \
    yum install -y nginx git && \
    mkdir /workdirectory && \
    git clone https://github.com/Mohan2027/ActorsWebpage.git /workdirectory && \
    cp /workdirectory/Maheshbabu.html /var/www/html/ && \
    systemctl start nginx && \
    systemctl enable nginx

EXPOSE 80
