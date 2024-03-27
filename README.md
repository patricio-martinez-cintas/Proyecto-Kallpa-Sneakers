# <p align="center">**Proyecto Kallpa Sneakers**</p>

<p align="center">
  <img src="/Recursos/Kallpa logo.png" alt="Kallpa">
</p>


## OBJETIVO DEL PROYECTO: 

Construcción desde cero de un modelo de base de datos de la empresa Kallpa Sneakers, yendo desde la construcción de las tablas necesarias y la inserción de los datos correspondientes, hasta la creación de vistas (views), funciones (functions), procedimientos almacenados (Stored Procedures) y disparadores (triggers).


## PARTES DEL PROYECTO

**Creación de la Base de Datos y Tablas:** Se creo la estructura de tablas de la base de datos y también las relaciones entre ellas.

<p align="center">
  <img src="/Recursos/Diagrama Entidad-relacion.png" alt="KPI" width="1000">
</p>


**Inserción de los datos correspondientes a cada tabla:** Se realizaron la inserción de los datos correspondientes a cada tabla. Las inserciones fueron:

+ [articulo_materia_prima](/insercion%20datos%20de%20tablas%20en%20sql/articulo_materia_prima.sql)

+ [articulo](/insercion%20datos%20de%20tablas%20en%20sql/articulo.sql)

+ [cliente](/insercion%20datos%20de%20tablas%20en%20sql/cliente.sql)

+ [materia_prima](/insercion%20datos%20de%20tablas%20en%20sql/materia_prima.sql)

+ [proveedor](/insercion%20datos%20de%20tablas%20en%20sql/proveedor.sql)

+ [transporte](/insercion%20datos%20de%20tablas%20en%20sql/transporte.sql)

+ [venta](/insercion%20datos%20de%20tablas%20en%20sql/venta.sql)

**Creación de views, functions, store procedure y trigger:** Se crearon vistas, funciones y procedimientos almacenados para trabajar con los datos dentro de la base de datos, además de un disparador y creacion de una tabla auditoría que reacciona cada vez que se inserta, actualiza o elimina un dato en alguna tabla.

+ [views](/Function,%20Store%20Procedure,%20Views%20y%20Trigger/Views.sql)

+ [Store Procedure](/Function,%20Store%20Procedure,%20Views%20y%20Trigger/Store%20Procedure.sql)

+ [Function](/Function,%20Store%20Procedure,%20Views%20y%20Trigger/function.sql)

+ [Trigger y tabla auditoria](/Function,%20Store%20Procedure,%20Views%20y%20Trigger/Triggers%20y%20tabla%20auditoria%20general.sql)


**Database final:** Archivo final para crear toda la base de datos completa:

+ [kallpa sneakers modelo final](/Base%20de%20dato%20final/kallpa_sneakers_database_modelo.sql)
