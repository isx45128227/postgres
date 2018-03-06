# @edt ASIX M11 Curs 2017-2018
# postgres:base 
# servidor postgres
# ----------------------------------

FROM postgres:9.3
ENV POSTGRES_USER docker
ENV POSTGRES_PASSWORD jupiter
ENV POSTGRES_DB training
#COPY pg_hba.conf /var/lib/postgresql/data/
ADD training/script-training.sql /docker-entrypoint-initdb.d/
