FROM centos:latest

MAINTAINER CB

RUN yum install -y ngnix

RUN yum insall -y git

CMD ["mkdir /workdirectory"]

WORKDIR /workdirectory

RUN git clone https://github.com/Mohan2027/ActorsWebpage.git

CMD ["cp /workdirectory/Maheshbabu.html /var/www/html/"]

CMD ["systemctl start ngnix”]

EXPOSE 80
