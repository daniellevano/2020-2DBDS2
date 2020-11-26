-- Crear BD BDprueba
CREATE USER BDPRUEBA
IDENTIFIED BY "123"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";

GRANT ALL PRIVILEGES TO BDPRUEBA;

-- Cree un usuario llamado AcademicoPrueba y clave 123
CREATE USER ACADEMICOPRUEBA
IDENTIFIED BY "123"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";

GRANT ALL PRIVILEGES TO ACADEMICOPRUEBA;