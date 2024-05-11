FROM centos:latest

MAINTAINER CB

RUN yum install ngnix -y

RUN yum insall git -y

CMD ["mkdir /workdirectory"]

WORKDIR /workdirectory

RUN git clone https://github.com/Mohan2027/ActorsWebpage.git

CMD ["cp /workdirectory/Maheshbabu.html /var/www/html/"]

CMD ["systemctl start ngnix”]

EXPOSE 80
