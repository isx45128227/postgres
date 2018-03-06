# @edt ASIX M11 Curs 2017-2018
# postgres:base 
# servidor postgres
# ----------------------------------

FROM fedora:24
MAINTAINER @isx45128227 "Roger Ferran @edt Curs 2017-2018"
RUN mkdir /opt/docker/

RUN dnf -y update vi
RUN dnf -y install vim procps iputils iproute tree nmap mlocate man-db \
                   postgresql postgresql-server postgresql-libs rpcbind passwd findutils
                   
USER postgres

# Create a PostgreSQL role named ``postgres`` with ``jupiter`` as the password and
# then create a database `training` owned by the ``postgres`` role.
# Note: here we use ``&&\`` to run commands one after the other - the ``\``
#       allows the RUN command to span multiple lines.
# RUN    /etc/init.d/postgresql start &&\
#    psql --command "CREATE USER postgres WITH SUPERUSER PASSWORD 'jupiter';" 
    # createdb -O postgres training
    
COPY pg_hba.conf /var/lib/pgsql/data/
COPY postgresql.conf /var/lib/pgsql/data/

# Expose the PostgreSQL port
EXPOSE 5432

COPY training/* /opt/docker/
COPY install.sh /opt/docker/ 
COPY startup.sh /opt/docker/ 

RUN chmod +x /opt/docker/install.sh
RUN chmod +x /opt/docker/startup.sh

WORKDIR /opt/docker

CMD ["/usr/sbin/rpcbind "]
CMD ["/opt/docker/install.sh"]
CMD ["/opt/docker/startup.sh"]

# Set the default command to run when starting the container
# CMD ["/usr/lib/postgresql/9.3/bin/postgres", "-D", "/var/lib/postgresql/9.3/main", "-c", "config_file=/etc/postgresql/9.3/main/postgresql.conf"]
# CMD ["/usr/bin/pg_ctl","-D","/var/lib/pgsql/data","-l","logfile","start"]

## Per connectar-se --> psql -h localhost -p PORTQUETOQUI -d training -U postgres --password
