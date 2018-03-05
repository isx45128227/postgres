# @edt ASIX M11 Curs 2017-2018
# postgres:base 
# servidor postgres
# ----------------------------------

FROM fedora:24
MAINTAINER @isx45128227 "@edt ASIX M11 Curs 2017-2018"
RUN mkdir /opt/docker/

RUN dnf -y update vi
RUN dnf -y install vim procps iputils iproute tree nmap mlocate man-db \
                   postgresql postgresql-server postgresql-libs rpcbind passwd findutils

COPY install.sh /opt/docker/
COPY startup.sh /opt/docker/

COPY pg_hba.conf /var/lib/pgsql/data/pg_hba.conf
COPY postgresql.conf /var/lib/pgsql/data/postgresql.conf

COPY training/* /opt/docker/ 

RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker

CMD ["/usr/sbin/rpcbind "]
CMD ["/opt/docker/install.sh"]
CMD ["/opt/docker/startup.sh"]
