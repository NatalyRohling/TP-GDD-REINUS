

USE GD2C2024
GO


------------ Eliminaci�n de funciones    ------------------

IF OBJECT_ID('REINUS.CALCULAR_TURNO') IS NOT NULL
DROP FUNCTION REINUS.CALCULAR_TURNO

IF OBJECT_ID('REINUS.CALCULAR_HORARIO') IS NOT NULL
DROP FUNCTION REINUS.CALCULAR_HORARIO
GO
IF OBJECT_ID('REINUS.CALCULAR_RANGO_ETARIO') IS NOT NULL
DROP FUNCTION REINUS.CALCULAR_RANGO_ETARIO
GO
IF OBJECT_ID('REINUS.CALCULAR_FECHA') IS NOT NULL
DROP FUNCTION REINUS.CALCULAR_FECHA
GO



------------ Eliminaci�n de procedures    ------------------

IF OBJECT_ID('REINUS.BI_MIGRAR_D_RANGO_ETARIO','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_D_RANGO_ETARIO

IF OBJECT_ID('REINUS.BI_MIGRAR_D_TURNOS','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_D_TURNOS

IF OBJECT_ID('REINUS.BI_MIGRAR_D_UBICACION','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_D_UBICACION

IF OBJECT_ID('REINUS.BI_MIGRAR_D_SUCURSAL','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_D_SUCURSAL

IF OBJECT_ID('REINUS.BI_MIGRAR_D_TIEMPO','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_D_TIEMPO

IF OBJECT_ID('REINUS.BI_MIGRAR_CATEGORIA','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_CATEGORIA
GO

IF OBJECT_ID('REINUS.BI_MIGRAR_SUBCATEGORIA','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_SUBCATEGORIA
GO

IF OBJECT_ID('REINUS.BI_MIGRAR_VENTAS','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_VENTAS

IF OBJECT_ID('REINUS.BI_MIGRAR_D_MEDIO_PAGO','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_D_MEDIO_PAGO

IF OBJECT_ID('REINUS.BI_MIGRAR_D_CAJAS','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_D_CAJAS

IF OBJECT_ID('REINUS.BI_MIGRAR_H_VENTAS','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_H_VENTAS
GO

IF OBJECT_ID('REINUS.BI_MIGRAR_H_PAGOS','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_H_PAGOS
GO

IF OBJECT_ID('REINUS.BI_MIGRAR_H_PROMOCIONES','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_H_PROMOCIONES
GO

IF OBJECT_ID('REINUS.BI_MIGRAR_H_ENVIOS','P') IS NOT NULL
DROP PROCEDURE  REINUS.BI_MIGRAR_H_ENVIOS
GO

------------ Eliminaci�n de views ------------------

IF OBJECT_ID('REINUS.VIEW_1','V') IS NOT NULL
DROP VIEW  REINUS.VIEW_1
GO


IF OBJECT_ID('REINUS.VIEW_2','V') IS NOT NULL
DROP VIEW  REINUS.VIEW_2
GO


IF OBJECT_ID('REINUS.VIEW_3','V') IS NOT NULL
DROP VIEW  REINUS.VIEW_3
GO


IF OBJECT_ID('REINUS.VIEW_4','V') IS NOT NULL
DROP VIEW  REINUS.VIEW_4
GO

IF OBJECT_ID('REINUS.VIEW_5','V') IS NOT NULL
DROP VIEW  REINUS.VIEW_5
GO

IF OBJECT_ID('REINUS.VIEW_6','V') IS NOT NULL
DROP VIEW  REINUS.VIEW_6
GO

IF OBJECT_ID('REINUS.VIEW_7','V') IS NOT NULL
DROP VIEW  REINUS.VIEW_7
GO

IF OBJECT_ID('REINUS.VIEW_8','V') IS NOT NULL
DROP VIEW  REINUS.VIEW_8
GO

IF OBJECT_ID('REINUS.VIEW_9','V') IS NOT NULL
DROP VIEW  REINUS.VIEW_9
GO

IF OBJECT_ID('REINUS.VIEW_10','V') IS NOT NULL
DROP VIEW  REINUS.VIEW_10
GO

IF OBJECT_ID('REINUS.VIEW_11','V') IS NOT NULL
DROP VIEW  REINUS.VIEW_11
GO

IF OBJECT_ID('REINUS.VIEW_12','V') IS NOT NULL
DROP VIEW  REINUS.VIEW_12
GO

IF OBJECT_ID('REINUS.BI_TIEMPO','U') IS NOT NULL
    DROP TABLE REINUS.BI_TIEMPO;


IF OBJECT_ID('REINUS.BI_VENTAS','U') IS NOT NULL
    DROP TABLE REINUS.BI_VENTAS;


IF OBJECT_ID('REINUS.BI__ENVIOS','U') IS NOT NULL
    DROP TABLE REINUS.BI_H_ENVIOS;

IF OBJECT_ID('REINUS.BI_TIPO_ENVIO','U') IS NOT NULL
    DROP TABLE REINUS.BI_TIPO_ENVIO

IF OBJECT_ID('REINUS.BI_RANGO_ETARIO','U') IS NOT NULL
    DROP TABLE REINUS.BI_RANGO_ETARIO;

IF OBJECT_ID('REINUS.BI_RANGO_HORARIO','U') IS NOT NULL
    DROP TABLE REINUS.BI_RANGO_HORARIO;

IF OBJECT_ID('REINUS.BI_UBICACION','U') IS NOT NULL
    DROP TABLE REINUS.BI_UBICACION;
GO
IF OBJECT_ID('REINUS.BI_D_MEDIO_PAGO','U') IS NOT NULL
    DROP TABLE REINUS.BI_D_MEDIO_PAGO;
	GO
IF OBJECT_ID('REINUS.BI_RUBRO','U') IS NOT NULL
    DROP TABLE REINUS.BI_RUBRO;
GO

IF OBJECT_ID('REINUS.BI_SUBRUBRO','U') IS NOT NULL
    DROP TABLE REINUS.BI_SUBRUBRO;

GO

---FALTA VENTA, 
CREATE TABLE REINUS.BI_VENTA(
VENTA_ID INTEGER IDENTITY(1,1) NOT NULL,
 VENTA_RANGO_HORARIO INT ,
 VENTA_TIPO_MEDIO_PAGO INT,
 VENTA_RANGO_ETARIO_CLIENTE INT,
 VENTA_UBICACION INT ,
 VENTA_TIEMPO INT ,
 VENTA_RUBRO INT


)
CREATE TABLE REINUS.BI_PUBLICACION(
  PUBLICACION_ID INTEGER IDENTITY(1,1) NOT NULL,
  PUBLICACION_SUBRUBRO INT,
  PUBLICACION_RUBRO INT ,
  PUBLICACION_TIEMPO INT
)
CREATE TABLE REINUS.BI_ENVIO(
ENVIO_ID INTEGER IDENTITY(1,1) NOT NULL,
ENVIO_TIPO_MEDIO_PAGO  INT ,
ENVIO_UBICACION INT,
ENVIO_TIPO_ENVIO INT,
ENVIO_TIEMPO INT 
)


----------------------------DIMENSIONES
CREATE TABLE REINUS.BI_RUBRO(
   ID_RUBRO INTEGER IDENTITY(1,1) NOT NULL,
PRODUCTO_RUBRO_DESCRIPCION  NVARCHAR(50)
)

CREATE TABLE REINUS.BI_SUBRUBRO(
   ID_SUBRUBRO INTEGER IDENTITY(1,1) NOT NULL,
PRODUCTO_SUB_RUBRO NVARCHAR(50)
)
CREATE TABLE REINUS.BI_TIPO_ENVIO
(
TIPO_ENVIO_ID INTEGER IDENTITY(1,1) NOT NULL,
TIPO NVARCHAR(50)
)
GO
CREATE TABLE REINUS.BI_TIPO_MEDIO_PAGO(
ID_MEDIO_PAGO INTEGER IDENTITY(1,1) NOT NULL, 
MEDIO_PAGO NVARCHAR(50),
TIPO_MEDIO_PAGO NVARCHAR(50)

)
GO
CREATE TABLE REINUS.BI_RANGO_HORARIO(
ID_RANGO_HORARIO INTEGER IDENTITY(1,1) NOT NULL,
RANGO_HORARIO_DESCRIPCION NVARCHAR(50)
)
GO

CREATE TABLE REINUS.BI_RANGO_ETARIO(
ID_RANGO_ETARIO INTEGER IDENTITY(1,1) NOT NULL,
RANGO_ETARIO_DESCRIPCION NVARCHAR(50)
)
GO
CREATE TABLE REINUS.BI_UBICACION(
    UBICACION_ID              INTEGER IDENTITY(1,1) NOT NULL,
    UBICACION_PROVINCIA       NVARCHAR(50),
    UBICACION_LOCALIDAD       NVARCHAR(50)
)
GO
CREATE TABLE REINUS.BI_TIEMPO(
    TIEMPO_ID INTEGER  IDENTITY(1,1) NOT NULL,
    TIEMPO_ANIO          SMALLINT ,
    TIEMPO_CUATRIMESTRE SMALLINT ,
    TIEMPO_MES          SMALLINT 
)
GO


	CREATE FUNCTION REINUS.CALCULAR_RANGO_ETARIO (@FECHA_NACIMIENTO DATE)
RETURNS SMALLINT
AS
BEGIN
    DECLARE @ANIOS INT = DATEDIFF(YEAR, @FECHA_NACIMIENTO, GETDATE())
    DECLARE @RES SMALLINT
    IF @ANIOS < 25
        SET @RES = 1
    ELSE
        IF @ANIOS BETWEEN 25 AND 35
            SET @RES = 2
        ELSE
            IF @ANIOS BETWEEN 35 AND 50
                SET @RES = 3
            ELSE
                IF @ANIOS > 50
                    SET @RES = 4
                ELSE
                    SET @RES = 5
    RETURN @RES
END
GO
CREATE FUNCTION REINUS.CALCULAR_HORARIO (@HORARIO DATETIME)
RETURNS SMALLINT
AS
BEGIN
    DECLARE @HORA INT = DATEPART(HOUR, @HORARIO)
    DECLARE @RES SMALLINT
    IF @HORA BETWEEN 0 AND 6
            SET @RES = 1
        ELSE
            IF @HORA BETWEEN 6 AND 12
                SET @RES = 2
            ELSE IF  @HORA BETWEEN 12 AND 18
                SET @RES = 3
			ELSE
			SET @RES =4
				 

    RETURN @RES
END
GO

CREATE FUNCTION REINUS.CALCULAR_FECHA(@FECHA DATETIME)
RETURNS SMALLINT
AS
BEGIN
DECLARE @ANIO INT
DECLARE @CUATRIMESTRE INT
DECLARE @MES INT

SELECT @ANIO = YEAR(@FECHA), @CUATRIMESTRE = DATEPART(QUARTER,@FECHA), @MES = MONTH(@FECHA)
RETURN (select TIEMPO_ID from BI_D_TIEMPO
where
@ANIO = TIEMPO_ANIO AND
@CUATRIMESTRE = TIEMPO_CUATRIMESTRE AND
@MES = TIEMPO_MES
)
END
GO



CREATE PROCEDURE REINUS.BI_MIGRAR_D_RANGO_ETARIO
AS
BEGIN
    INSERT INTO BI_D_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
    VALUES ('<25')
    INSERT INTO BI_D_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
    VALUES ('25-35')
    INSERT INTO BI_D_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
    VALUES ('35-50')
    INSERT INTO BI_D_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
    VALUES ('>50')
    INSERT INTO BI_D_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
    VALUES ('DESCONOCIDO')
END
GO



CREATE PROCEDURE REINUS.BI_MIGRAR_D_RANGO_HORARIO
AS
BEGIN
    INSERT INTO BI_D_RANGO_HORARIO(RANGO_HRAARIO_DESCRIPCION)
    VALUES ('00:00-06:00')
    INSERT INTO BI_D_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
    VALUES ('06:00-12:00')
    INSERT INTO BI_D_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
    VALUES ('12:00-18:00')
    INSERT INTO BI_D_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
    VALUES ('18:00-24:00')
   
END
GO

-- Migracion de TIPO ENVIO
CREATE PROCEDURE REINUS.BI_MIGRAR_D_TIPO_ENVIO
AS
BEGIN
    INSERT INTO BI_D_TIPO_ENVIO(TIPO)
        (select TIPO  from REINUS.Tipo_Envio)
END
GO
-- Migracion de MEDIO PAGO
CREATE PROCEDURE REINUS.BI_MIGRAR_D_MEDIO_PAGO
AS
BEGIN
    INSERT INTO BI_D_MEDIO_PAGO(MEDIO_PAGO, TIPO_MEDIO_PAGO)
        (select MEDIO_PAGO, TIPO_MEDIO_PAGO from REINUS.MedioPago)
END
GO
-- Migraci�n RUBRO
CREATE PROCEDURE REINUS.BI_MIGRAR_RUBRO
AS
BEGIN
INSERT INTO BI_D_RUBRO (PRODUCTO_RUBRO_DESCRIPCION)
(SELECT PRODUCTO_RUBRO_DESCRIPCION   FROM REINUS.Rubro
GROUP BY PRODUCTO_RUBRO_DESCRIPCION )
END
GO
-- Migraci�n SUBRUBRO
CREATE PROCEDURE REINUS.BI_MIGRAR_SUBRUBRO
AS
BEGIN
INSERT INTO BI_D_SUBRUBRO(PRODUCTO_SUB_RUBRO)
(SELECT  PRODUCTO_SUB_RUBRO FROM REINUS.Subrubro
GROUP BY  PRODUCTO_SUB_RUBRO)
END
GO



/* ESTO PODRIAMOS USALRO*/

/*
CREATE PROCEDURE REINUS.BI_MIGRAR_D_UBICACION
AS
BEGIN
    INSERT INTO BI_D_UBICACION(UBI_PROVINCIA, UBI_LOCALIDAD)
        (SELECT prov_nombre, localidad_nombre
         FROM REINUS.Localidad
                  JOIN REINUS.Provincia P ON P.prov_cod = Localidad.localidad_prov)
END
GO


CREATE PROCEDURE REINUS.BI_MIGRAR_D_TIEMPO
AS
BEGIN
    -
    INSERT INTO BI_D_TIEMPO(TIEMPO_ANIO, TIEMPO_CUATRIMESTRE, TIEMPO_MES)
        (SELECT YEAR(ticket_fecha), DATEPART(QUARTER, ticket_fecha), MONTH(ticket_fecha)
         FROM REINUS.Ticket
         GROUP BY YEAR(ticket_fecha), DATEPART(QUARTER, ticket_fecha), MONTH(ticket_fecha)
         UNION
         SELECT YEAR(pago_fecha), DATEPART(QUARTER, pago_fecha), MONTH(pago_fecha)
         FROM REINUS.Pago
         GROUP BY YEAR(pago_fecha), DATEPART(QUARTER, pago_fecha), MONTH(pago_fecha)
         UNION
         SELECT YEAR(prog_env_fecha_programacion),
                DATEPART(QUARTER, prog_env_fecha_programacion),
                MONTH(prog_env_fecha_programacion)
         FROM REINUS.Programacion_Envio
         GROUP BY YEAR(prog_env_fecha_programacion), DATEPART(QUARTER, prog_env_fecha_programacion),
                  MONTH(prog_env_fecha_programacion))
END
GO




*/

---------------------------------------- Creacion de vistas ----------------------------------------
--
/*Volumen de ventas. Cantidad de ventas registradas por rango horario seg�n el
 mes de cada a�o.*/
 --4--
CREATE VIEW REINUS.VIEW_4 AS
SELECT UBI_PROVINCIA,
       UBI_LOCALIDAD,
       TIEMPO_ANIO,
       TIEMPO_MES,
       SUM(VENT_CANTIDAD_VENTAS) AS CANTIDAD_VENTAS
FROM REINUS.BI_H_VENTAS
         JOIN REINUS.BI_D_UBICACION ON UBI_ID = BI_H_VENTAS.VENT_UBICACION
         JOIN REINUS.BI_D_TIEMPO ON TIEMPO_ID = BI_H_VENTAS.VENT_TIEMPO
         JOIN REINUS.BI_D_TURNOS ON BI_H_VENTAS.VENT_TURNOS = BI_D_TURNOS.TURNO_ID
GROUP BY UBI_PROVINCIA, UBI_LOCALIDAD, TIEMPO_ANIO, TIEMPO_MES
GO



--7--
--
/*Porcentaje de cumplimiento de env�os en los tiempos programados por
 provincia (del almac�n) por a�o/mes (desv�o). Se calcula teniendo en cuenta los
 env�os cumplidos sobre el total de env�os para el per�odo.
/*Hay que cambiar de sucrusal a rango etario */
CREATE VIEW REINUS.VIEW_7 AS
SELECT 
    S1.SUCURSAL_DETALLE,
    T1.TIEMPO_ANIO, 
    T1.TIEMPO_MES,
    (
        (
            SELECT COUNT(*) 
            FROM REINUS.BI_D_TIEMPO T2 
            JOIN REINUS.BI_H_ENVIOS E2 
                ON E2.ENV_TIEMPO = T2.TIEMPO_ID 
            WHERE 
                T2.TIEMPO_ANIO = T1.TIEMPO_ANIO 
                AND T2.TIEMPO_MES = T1.TIEMPO_MES 
                AND S1.SUCURSAL_ID = E2.ENV_SUCURSAL 
                AND E2.ENV_ATRASADO = 0
            GROUP BY E2.ENV_SUCURSAL 
        ) * 100.0 / COUNT(E1.ENV_ID)
    ) AS 'Porcentaje cumplimiento'
FROM 
    REINUS.BI_H_ENVIOS E1
JOIN 
    REINUS.BI_D_SUCURSAL S1 
    ON E1.ENV_SUCURSAL = S1.SUCURSAL_ID
JOIN 
    REINUS.BI_D_TIEMPO T1 
    ON E1.ENV_TIEMPO = T1.TIEMPO_ID
GROUP BY 
    T1.TIEMPO_ANIO, 
    T1.TIEMPO_MES, 
    S1.SUCURSAL_DETALLE, 
    S1.SUCURSAL_ID
GO
