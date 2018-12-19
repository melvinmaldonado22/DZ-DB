--Crear nuevo usuario(esquema) con el password "PASSWORD" 
CREATE USER DZ_DB
  IDENTIFIED BY "oracle"
  DEFAULT TABLESPACE USERS
  TEMPORARY TABLESPACE TEMP;
--asignar cuota ilimitada al tablespace por defecto  
ALTER USER DB_UNAH QUOTA UNLIMITED ON USERS;

--Asignar privilegios basicos
GRANT create session TO DZ_DB;
GRANT create table TO DZ_DB;
GRANT create view TO DZ_DB;
GRANT create any trigger TO DZ_DB;
GRANT create any procedure TO DZ_DB;
GRANT create sequence TO DZ_DB;
GRANT create materialized view TO DZ_DB;
GRANT select any table TO DZ_DB;
GRANT create synonym TO DZ_DB;