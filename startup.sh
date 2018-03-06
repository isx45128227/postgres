#!/bin/bash
# ----------------------------
# Sessió com a usuari postgres
# ----------------------------
# su -l postgres
/usr/bin/pg_ctl -D /var/lib/pgsql/data -l logfile start
