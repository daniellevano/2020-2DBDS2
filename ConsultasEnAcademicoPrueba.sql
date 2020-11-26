-- Creamos la tabla: CURSO
CREATE TABLE curso (
    idcurso number  PRIMARY KEY,
    nombre  VARCHAR2(40),
    horas   NUMBER,
    credito NUMBER
);

-- Cree una secuencia llamada SQ_CURSO
CREATE SEQUENCE SQ_CURSO
START WITH 1
INCREMENT BY 1
MINVALUE 1
NOCYCLE;

-- Pruebe la secuencia utilizando SQ_CURSO.NEXTVAL
SELECT 
    SQ_CURSO.NEXTVAL
FROM
    DUAL;

-- Inserte registros para la tabla curso
INSERT INTO curso VALUES(
    SQ_CURSO.NEXTVAL,
    'Cálculo I',
    5,
    4
);
INSERT INTO curso VALUES(
    SQ_CURSO.NEXTVAL,
    'Diseño de Base de Datos',
    6,
    5
);
INSERT INTO curso VALUES(
    SQ_CURSO.NEXTVAL,
    'Lenguaje de Programación I',
    5,
    4
);
INSERT INTO curso VALUES(
    SQ_CURSO.NEXTVAL,
    'Estructuras Discretas',
    6,
    5
);
COMMIT;

-- Listar Tabla Curso
SELECT
    *
FROM
    CURSO;

-- Elimine los registros y muestre el resultado
--   Lenguaje de Programación I
--   Estructuras Discretas
DELETE FROM CURSO
WHERE 
    IDCURSO = 6;

DELETE FROM CURSO
WHERE 
    IDCURSO = 7;    
COMMIT;

-- Inserte nuevamente los registros ELIMINADOS ANTERIORMENTE
-- y muestre todos los registros de la tabla
INSERT INTO curso VALUES(
    SQ_CURSO.NEXTVAL,
    'Lenguaje de Programación I',
    5,
    4
);
INSERT INTO curso VALUES(
    SQ_CURSO.NEXTVAL,
    'Estructuras Discretas',
    6,
    5
);
COMMIT;

--Muestre el mismo reporte, ordenado por Nombre 
-- y otro ordenado por total de horas.
SELECT
    *
FROM
    CURSO
ORDER BY NOMBRE;

SELECT
    *
FROM
    CURSO
ORDER BY HORAS;


