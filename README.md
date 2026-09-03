### TECH_ZONE_STORE
hecho por Evelyn Noemí Barrios Méndez

Proyecto de base de datos relacional para la gestion del sistema Tech Zone Store.

## Estructura del Proyecto

- ddl/
  - db.sql: Definicion de tablas, relaciones y restricciones de la base de datos.
- dml/
  - insert.sql: Registros e inserciones iniciales.
- dql/
  - queries.sql: Consultas de seleccion, reportes y verificacion.
- dcl/
  - procedure.sql: Procedimientos almacenados y funciones del sistema.
- evidencias/
  - Capturas y pruebas de ejecucion.

## Orden de Ejecucion

Para la correcta inicializacion de la base de datos, ejecute los scripts en el siguiente orden:

1. ddl/db.sql
2. dml/insert.sql
3. dql/queries.sql
4. dcl/procedure.sql

## Requisitos
- Servidor SQL (MySQL / MariaDB / PostgreSQL).
- Cliente SQL (DBeaver, MySQL Workbench, VS Code Client o CLI).