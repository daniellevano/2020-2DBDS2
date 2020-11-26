-- Creación de la Tabla Persona
CREATE TABLE persona (
    idpersona   NUMBER PRIMARY KEY,
    nombre      VARCHAR2(40)
);

-- INSERTAR 4 REGISTROS

INSERT INTO persona VALUES (
    1,
    'Pablo Lévano'
);

INSERT INTO persona VALUES (
    2,
    'Mario Rosales'
);

INSERT INTO persona VALUES (
    31,
    'Mario Rosales'
);

INSERT INTO persona VALUES (
    32,
    'Fernando Casas'
);

COMMIT;


-- Listar tabla Persona

SELECT
    *
FROM
    persona;


-- Eliminar Registro de Fernando Casas

DELETE FROM persona WHERE
    idpersona = 32;

COMMIT;

-- Agregue a la persona: Pedro Zambrano
-- Use su criterio para asignar un ID.
INSERT INTO persona VALUES (
    32,
    'Pedro Zambrano'
);
COMMIT;
