#!/bin/bash
# @edt ASIX-M11 Curs 2017-2018
# postgres:base
# ----------------------------
# su -l postgres
/usr/bin/pg_ctl -D /var/lib/pgsql/data -l logfile start
