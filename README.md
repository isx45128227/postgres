# Docker postgres
## @edt ASIX M11 Curs 2017-2018
### Roger Ferran Aranguren
### isx45128227

Creació d'un servidor postgres:base

Servidor postgres base per treballar interactivament.

## Utilització

    docker run --name postgres -h postgres -d isx45128227/postgres
    
    # Per accedir a dins
    
      docker exec -it postgres /bin/bash
    
    # Per veure dades de training
    
      psql -h localhost -p 5432 -U docker -d training -c 'SELECT * FROM PEDIDOS;'
      
      \d 
      
      SELECT * FROM pedidos;
      
      SHOW hba_file;
      
      SHOW config_file;
