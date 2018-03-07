# @edt ASIX-M11 Curs 2017-2018
# postgres:base
# -----------------------------

# ----------------
# Acces
# ----------------
# psql -qtA -F ';' training
# psql -qtA -F ';' training -c "select * from oficinas";
# psql -U docker training -c "select *  from clientes;"
# psql -h localhost -U docker training -c "select *  from clientes;"
# psql -h 172.17.0.2 -U docker training -c "select *  from clientes;"
