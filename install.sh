#! /bin/bash
# install.sh
# @edt ASIX-M11 Curs 2017-2018
# postgres:base
# -----------------------------



# --------------------------
# Configurar compte 
# --------------------------
# echo "jupiter" | passwd --stdin postgres
# useradd roger
# echo "roger" | passwd --stdin roger

# ----------------------------
# Sessió com a usuari postgres
# engegar el servei
# ----------------------------
# su -l postgres
# OOMScoreAdjust=-1000
# PG_OOM_ADJUST_FILE=/proc/self/oom_score_adj
# PG_OOM_ADJUST_VALUE=0
# PGSTARTTIMEOUT=270
# PGDATA=/var/lib/pgsql/data
# export OOMScoreAdjust PG_OOM_ADJUST_FILE PG_OOM_ADJUST_VALUE PGSTARTTIMEOUT PGDATA

# Crear l'estructura de dades /var/libpgsql/data i engegar el servei 
# pg_ctl initdb 
# /usr/bin/pg_ctl -D /var/lib/pgsql/data -l logfile start

# /usr/libexec/postgresql-ctl restart
# /usr/libexec/postgresql-ctl reload
# /usr/libexec/postgresql-ctl stop
# /usr/libexec/postgresql-ctl start

# -----------------------------------------
# Crear un compte d'usuari local 
# -----------------------------------------



# \q
# psql training
# \i /opt/docker/pedidos.sql
# \i /opt/docker/productos.sql
# \i /opt/docker/clientes.sql
# \i /opt/docker/repventas.sql

# \copy pedidos from /opt/docker/pedidos.dat 
# \copy productos from /opt/docker/productos.dat 
# \copy clientes from /opt/docker/clientes.dat  
# \copy repventas from /opt/docker/repventas.dat 
# \copy oficinas from /opt/docker/oficinas.dat  

# \q


# ----------------
# Acces
# ----------------
# psql -qtA -F ';' training
# psql -qtA -F ';' training -c "select * from oficinas";
# psql -U edtasixm06 training -c "select *  from clientes;"
# psql -h localhost -U edtasixm06 training -c "select *  from clientes;"
# psql -h 172.17.0.2 -U edtasixm06 training -c "select *  from clientes;"
