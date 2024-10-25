USE GD2C2024
GO;

---------Eliminacion de tablas -----------------------------------------

IF OBJECT_ID('REINUS.Cliente','U') IS NOT NULL
    DROP TABLE REINUS.Cliente;


IF OBJECT_ID('REINUS.Usuario','U') IS NOT NULL
    DROP TABLE REINUS.Usuario;


IF OBJECT_ID('REINUS.Vendedor','U') IS NOT NULL
    DROP TABLE REINUS.Vendedor;

IF OBJECT_ID('REINUS.Domicilio','U') IS NOT NULL
    DROP TABLE REINUS.Domicilio;

IF OBJECT_ID('REINUS.Almacen','U') IS NOT NULL
    DROP TABLE REINUS.Almacen;
IF OBJECT_ID('REINUS.Publicacion','U') IS NOT NULL
    DROP TABLE REINUS.Publicacion;

IF OBJECT_ID('REINUS.Factura','U') IS NOT NULL
    DROP TABLE REINUS.Factura;

IF OBJECT_ID('REINUS.Factura','U') IS NOT NULL
    DROP TABLE REINUS.Detalle_Factura;

IF OBJECT_ID('REINUS.Detalle_Factura','U') IS NOT NULL
    DROP TABLE REINUS.Detalle_Factura;

IF OBJECT_ID('REINUS.Concepto','U') IS NOT NULL
    DROP TABLE REINUS.Concepto;

IF OBJECT_ID('REINUS.Factura','U') IS NOT NULL
    DROP TABLE REINUS.Factura;

IF OBJECT_ID('REINUS.Modelo','U') IS NOT NULL
    DROP TABLE REINUS.Modelo;

IF OBJECT_ID('REINUS.Venta','U') IS NOT NULL
    DROP TABLE REINUS.Venta;

IF OBJECT_ID('REINUS.Detalle_Venta','U') IS NOT NULL
    DROP TABLE REINUS.Detalle_Venta;

IF OBJECT_ID('REINUS.Envio','U') IS NOT NULL
    DROP TABLE REINUS.Envio;
IF OBJECT_ID('REINUS.Producto','U') IS NOT NULL
    DROP TABLE REINUS.Producto;

IF OBJECT_ID('REINUS.Rubro','U') IS NOT NULL
    DROP TABLE REINUS.Rubro;

IF OBJECT_ID('REINUS.Subrubro','U') IS NOT NULL
    DROP TABLE REINUS.Subrubro;

	IF OBJECT_ID('REINUS.Pago','U') IS NOT NULL
    DROP TABLE REINUS.Pago;
	IF OBJECT_ID('REINUS.MedioPago','U') IS NOT NULL
    DROP TABLE REINUS.MedioPago;
	IF OBJECT_ID('REINUS.Tipo_Envio','U') IS NOT NULL
    DROP TABLE REINUS.Tipo_Envio;

	IF OBJECT_ID('REINUS.Direccion','U') IS NOT NULL
    DROP TABLE REINUS.Direccion;


	IF OBJECT_ID('REINUS.Provincia','U') IS NOT NULL
    DROP TABLE REINUS.Provincia;

	IF OBJECT_ID('REINUS.Localidad','U') IS NOT NULL
    DROP TABLE REINUS.Localidad;

	ALTER TABLE REINUS.Provincia
DROP CONSTRAINT FK_Localidad_Provincia;





	-------------------------DBO NORMLAES---

	IF OBJECT_ID('dbo.MedioPago','U') IS NOT NULL
    DROP TABLE dbo.MedioPago;
		IF OBJECT_ID('dbo.Pago','U') IS NOT NULL
    DROP TABLE dbo.Pago;
	IF OBJECT_ID('dbo.Marca','U') IS NOT NULL
    DROP TABLE dbo.Marca;
	IF OBJECT_ID('dbo.Modelo','U') IS NOT NULL
    DROP TABLE dbo.Modelo;
	IF OBJECT_ID('dbo.Usuario','U') IS NOT NULL
    DROP TABLE dbo.Usuario;
	IF OBJECT_ID('dbo.Vendedor','U') IS NOT NULL
    DROP TABLE dbo.Vendedor;
	IF OBJECT_ID('dbo.Producto','U') IS NOT NULL
    DROP TABLE dbo.Producto;
	IF OBJECT_ID('dbo.Localidad','U') IS NOT NULL
    DROP TABLE dbo.Localidad;
	IF OBJECT_ID('dbo.Tipo_Envio','U') IS NOT NULL
    DROP TABLE dbo.Tipo_Envio;
	IF OBJECT_ID('dbo.Direccion','U') IS NOT NULL
    DROP TABLE dbo.Direccion;
	IF OBJECT_ID('dbo.Publicacion','U') IS NOT NULL
    DROP TABLE dbo.Publicacion;
	IF OBJECT_ID('dbo.Provincia','U') IS NOT NULL
    DROP TABLE dbo.Provincia;
		IF OBJECT_ID('dbo.Envio','U') IS NOT NULL
    DROP TABLE dbo.Envio;
	IF OBJECT_ID('dbo.Detalle_Venta','U') IS NOT NULL
    DROP TABLE dbo.Detalle_Venta;
	IF OBJECT_ID('dbo.Subrubro','U') IS NOT NULL
    DROP TABLE dbo.Subrubro;
	IF OBJECT_ID('dbo.Domicilio','U') IS NOT NULL
    DROP TABLE dbo.Domicilio;
		IF OBJECT_ID('dbo.Marca','U') IS NOT NULL
    DROP TABLE dbo.Marca;



	IF OBJECT_ID('dbo.Concepto','U') IS NOT NULL
    DROP TABLE dbo.Concepto;
	IF OBJECT_ID('dbo.Factura','U') IS NOT NULL
    DROP TABLE dbo.Factura;


	IF OBJECT_ID('dbo.Detalle_Factura','U') IS NOT NULL
    DROP TABLE dbo.Detalle_Factura;
	IF OBJECT_ID('dbo.Detalle_Pago','U') IS NOT NULL
    DROP TABLE dbo.Detalle_Pago;
	IF OBJECT_ID('dbo.Marca','U') IS NOT NULL
    DROP TABLE dbo.Marca;

	



-------------------- Eliminaci�n del esquema ---------------------------

DROP SCHEMA IF EXISTS REINUS
GO

-------------------- Creaci�n del esquema ---------------------------

CREATE SCHEMA REINUS
GO
----------------------------------CREACION DE TABLAS-------------------------

CREATE TABLE REINUS.Usuario (
ID_USUARIO INTEGER IDENTITY(1,1)  NOT NULL,
NOMBRE NVARCHAR(50), 
PASS NVARCHAR(50),
FECHA_CREACION DATE,
CLIENTE_ID INTEGER ,--FK
VENDEDOR_ID INTEGER--FK
)

CREATE TABLE REINUS.Domicilio (
ID_DOMICILIO  INTEGER  IDENTITY(1,1) NOT NULL,
PISO DECIMAL(18,0),
DEPTO NVARCHAR(50),
CP  NVARCHAR(50),
USUARIO_ID INTEGER,--FK
DIRECCION_ID INTEGER--FK
)

CREATE TABLE REINUS.Direccion (
ID_DIRECCION  INTEGER IDENTITY(1,1) NOT NULL ,
CALLE NVARCHAR(50),
NUM_CALLE INTEGER,
LOCALIDAD_ID INTEGER--FK
)

CREATE TABLE REINUS.Provincia(
ID_PROVINCIA  INTEGER IDENTITY(1,1) NOT NULL ,
NOMBRE NVARCHAR(50)
)

CREATE TABLE REINUS.Localidad (
ID_LOCALIDAD  INTEGER IDENTITY (1,1) NOT NULL ,
NOMBRE NVARCHAR(50),
ID_PROVINCIA INTEGER--FK
)

CREATE TABLE REINUS.Vendedor (
ID_VENDEDOR INTEGER  IDENTITY(1,1) NOT NULL,
RAZON_SOCIAL NVARCHAR(50), 
CUIT NVARCHAR(50) NOT NULL,
MAIL  NVARCHAR(50)
)

CREATE TABLE  REINUS.Cliente (
ID_CLIENTE INTEGER IDENTITY(1,1) NOT NULL,
NOMBRE NVARCHAR(50), 
APELLIDO NVARCHAR(50),
FECHA_NAC DATE, 
MAIL  NVARCHAR(50),
DNI DECIMAL(18,0)
)
CREATE TABLE  REINUS.Almacen (
ID_ALMACEN INTEGER  IDENTITY(1,1) NOT NULL,
CODIGO DECIMAL(18,0), 
ID_DIDRECCION INTEGER --FK
)

CREATE TABLE REINUS.Publicacion (
ID_PUBLICACION INT IDENTITY(1,1) NOT NULL,
CODIGO DECIMAL(18,0),
FECHA DATE, 
FECHA_V DATE,
DESCRIPCION NVARCHAR(255),
PRODUCTO_ID INTEGER  NOT NULL,
STOCK DECIMAL(18,0),
PRECIO INTEGER DEFAULT 0,
VENDEDOR_ID INTEGER NOT NULL ,--FK
COSTO INTEGER ,
ALMACEN DECIMAL(18,2),
PORC_VENTA DECIMAL(18,2),
DETALLE_FACTURA_ID INTEGER  NOT NULL

)
 
CREATE TABLE REINUS.Detalle_Factura 
(
FACTURA_ID INTEGER NOT NULL ,--FK
CONCEPTO_ID INTEGER NOT NULL,--FK
PRECIO DECIMAL(18,2),
CANTIDAD DECIMAL(18,0),
SUBTOTAL DECIMAL(18,2)

)
--CREADA
CREATE TABLE  REINUS.Concepto (
CONCEPTO_ID INTEGER IDENTITY(1,1) NOT NULL,
FACTURA_DET_TIPO NVARCHAR(50)

)
--CREADA
CREATE TABLE  REINUS.Factura (
FACTURA_ID DECIMAL(18,0) IDENTITY(1,1)NOT NULL,
FACTURA_NUMERO DECIMAL(18,0),
USUARIO_ID INTEGER ,
FECHA DATE,
TOTAL DECIMAL(18,2)

)
--CREADA
CREATE TABLE REINUS.Producto (
ID_PRODUCTO INTEGER IDENTITY(1,1) NOT NULL,
CODIGO NVARCHAR(50),
ID_MODELO INTEGER NOT NULL,--FK
PRECIO DECIMAL(18,2),
SUBRUBRO_ID INTEGER NOT NULL ,--FK
ID_MARCA INTEGER NOT NULL --FK

)
CREATE TABLE REINUS.Marca (--CREADA
ID_MARCA INTEGER IDENTITY (1,1) NOT NULL ,
MARCA NVARCHAR(50)
)

CREATE TABLE REINUS.Modelo (--CREADA
ID_MODELO INTEGER  IDENTITY(1,1)NOT NULL  , 
DESCRIPCION NVARCHAR(50),
CODIGO DECIMAL(18,2)
)
--CREADA
CREATE TABLE REINUS.Subrubro (
ID_SUBRUBRO INTEGER IDENTITY(1,1) NOT NULL,
RUBRO_ID INTEGER NOT NULL ,--FK
PRODUCTO_SUB_RUBRO NVARCHAR(50)
)
CREATE TABLE REINUS.Rubro (--CRAEDA CON EXITO
ID_RUBRO INTEGER IDENTITY(1,1) NOT NULL,
PRODUCTO_RUBRO_DESCRIPCION  NVARCHAR(50)
)
--CREADA
CREATE TABLE REINUS.MedioPago (
ID_MEDIO_PAGO INTEGER IDENTITY(1,1) NOT NULL, 
MEDIO_PAGO NVARCHAR(50),
TIPO_MEDIO_PAGO NVARCHAR(50),
ID_PAGO INTEGER NOT NULL--FK
)


--CREADA
CREATE TABLE REINUS.Pago (
PAGO_ID INTEGER IDENTITY (1,1) NOT NULL,
FECHA DATE, 
IMPORTE DECIMAL(18,2),
VENTA_ID INTEGER NOT NULL --FK

)
--CREADA
CREATE TABLE REINUS.Detalle_Pago (
ID_DETALLE_PAGO INTEGER IDENTITY(1,1) NOT NULL,
NRO_TARJETA NVARCHAR(50),
FECHA_VENC_TARJETA DATE,
CANT_CUOTAS DECIMAL(18,0),
MEDIO_PAGO_ID INTEGER NOT NULL--FK

)
--CRDADA
CREATE TABLE REINUS.Venta (
ID_VENTA INTEGER IDENTITY (1,1) NOT NULL,
CODIGO DECIMAL(18,0),
FECHA_HORA DATETIME,
TOTAL DECIMAL(18,2),
CLIENTE_ID INTEGER NOT NULL,--FK
ENVIO_ID INTEGER NOT NULL--FK
)

--CREADA
CREATE TABLE REINUS.Detalle_Venta (
VENTA_DET_ID INTEGER IDENTITY(1,1) NOT NULL,
CANT DECIMAL (18,0),
PRECIO DECIMAL(18,2),
SUBTOTAL DECIMAL(18,2),
PUBLICACION_ID INTEGER NOT NULL,
VENTA_ID INTEGER NOT NULL
)

CREATE TABLE REINUS.Envio --CREADA
(
ENVIO_ID INTEGER IDENTITY(1,1) NOT NULL,
FECHA_PROGRAMADA DATE ,
DOMICILIO_ID INTEGER NOT NULL ,--FK
HORA_INICIO DATE,
HORA_FIN_INICIO DATE ,
COSTO DECIMAL(18,2),
FECHA_ENTREGA DATETIME,
TIPO_ENVIO_ID INTEGER NOT NULL,--FK,
ENTREGA BIT
)
CREATE TABLE REINUS.Tipo_Envio
( --CREADA(
TIPO_ENVIO_ID INTEGER IDENTITY(1,1) NOT NULL,
TIPO NVARCHAR(50)
)
	-------------------- Creaci�n de primary keys ---------------------------

ALTER TABLE REINUS.MedioPago
ADD CONSTRAINT PK_MedioPago PRIMARY KEY (ID_MEDIO_PAGO);--HECHA

ALTER TABLE REINUS.Pago
ADD CONSTRAINT PK_Pago PRIMARY KEY (PAGO_ID);--HECHA


ALTER TABLE REINUS.Detalle_Venta  -- HECHA
ADD CONSTRAINT PK_Detalle_Venta PRIMARY KEY (VENTA_DET_ID);

ALTER TABLE REINUS.Venta
ADD CONSTRAINT PK_Venta PRIMARY KEY (ID_VENTA); --HECHA

ALTER TABLE REINUS.Cliente
ADD CONSTRAINT PK_Cliente PRIMARY KEY (ID_CLIENTE);--HECHA

ALTER TABLE REINUS.Usuario
ADD CONSTRAINT PK_Usuario PRIMARY KEY (ID_USUARIO);--HECHA

ALTER TABLE REINUS.Vendedor
ADD CONSTRAINT PK_Vendedor PRIMARY KEY (ID_VENDEDOR);--HECHA

ALTER TABLE REINUS.Domicilio
ADD CONSTRAINT PK_Domicilio PRIMARY KEY (ID_DOMICILIO);--HECHA

ALTER TABLE REINUS.Direccion
ADD CONSTRAINT PK_Direccion PRIMARY KEY (ID_DIRECCION);--HECHA

ALTER TABLE REINUS.Almacen
ADD CONSTRAINT PK_Almacen PRIMARY KEY (ID_ALMACEN);--HECHA

ALTER TABLE REINUS.Detalle_Factura
ADD CONSTRAINT PK_Detalle_Factura PRIMARY KEY (FACTURA_ID, CONCEPTO_ID);--HECHA


ALTER TABLE REINUS.Publicacion --HECHA
ADD CONSTRAINT PK_Publicacion PRIMARY KEY (ID_PUBLICACION);

ALTER TABLE REINUS.Factura
ADD CONSTRAINT PK_Factura PRIMARY KEY (FACTURA_ID);--HECHA


ALTER TABLE REINUS.Subrubro
ADD CONSTRAINT PK_Subrubro PRIMARY KEY (ID_SUBRUBRO);--HECHA

ALTER TABLE REINUS.Rubro
ADD CONSTRAINT PK_Rubro PRIMARY KEY (ID_RUBRO);--HECHA

ALTER TABLE REINUS.Producto
ADD CONSTRAINT PK_Producto PRIMARY KEY (ID_PRODUCTO);--HECHA


ALTER TABLE REINUS.Envio
ADD CONSTRAINT PK_Envio PRIMARY KEY (ENVIO_ID);--HECHA 

ALTER TABLE REINUS.Concepto
ADD CONSTRAINT PK_Concepto PRIMARY KEY (CONCEPTO_ID);--HECHA  

ALTER TABLE REINUS.Tipo_Envio
ADD CONSTRAINT PK_Tipo_Envio PRIMARY KEY (TIPO_ENVIO_ID);--HECHA  


ALTER TABLE REINUS.Marca
ADD CONSTRAINT PK_Marca PRIMARY KEY (ID_MARCA);--HECHA  

ALTER TABLE REINUS.Modelo
ADD CONSTRAINT PK_Modelo PRIMARY KEY (ID_MODELO);--HECHA  

ALTER TABLE REINUS.Tipo_Envio
ADD CONSTRAINT PK_Tipo_Envio PRIMARY KEY (TIPO_ENVIO_ID);--HECHA  

--ID_DETALLE_PAGO
ALTER TABLE REINUS.Detalle_Pago
ADD CONSTRAINT PK_Detalle_Pago PRIMARY KEY (ID_DETALLE_PAGO);--HECHA 


--ID_DETALLE_PAGO
ALTER TABLE REINUS.Localidad
ADD CONSTRAINT PK_Localidad PRIMARY KEY (ID_LOCALIDAD);--HECHA 

--ID_DETALLE_PAGO
ALTER TABLE REINUS.Provincia
ADD CONSTRAINT PK_Provincia PRIMARY KEY (ID_PROVINCIA);--HECHA 

--------------------------------------------------------------------------
-------------------- Creaci�n de foreign keys ---------------------------

--LISTO
ALTER TABLE REINUS.Usuario
ADD CONSTRAINT FK_Cliente_Usuario
FOREIGN KEY (CLIENTE_ID) 
REFERENCES REINUS.Cliente(ID_CLIENTE);

ALTER TABLE REINUS.Usuario
ADD CONSTRAINT FK_Cliente_Vendedor
FOREIGN KEY (VENDEDOR_ID) 
REFERENCES REINUS.Vendedor(ID_VENDEDOR);

--LISTO
ALTER TABLE REINUS.Domicilio
ADD CONSTRAINT FK_Usuario_Domicilio
FOREIGN KEY (USUARIO_ID) 
REFERENCES REINUS.Usuario(ID_USUARIO);

ALTER TABLE REINUS.Domicilio
ADD CONSTRAINT FK_Direccion_Domicilio
FOREIGN KEY (DIRECCION_ID) 
REFERENCES REINUS.Direccion(ID_DIRECCION);
--LISTO ESTA

ALTER TABLE REINUS.Direccion
ADD CONSTRAINT FK_Direccion_Localidad
FOREIGN KEY (LOCALIDAD_ID) 
REFERENCES REINUS.Localidad(ID_LOCALIDAD);

ALTER TABLE REINUS.Localidad
ADD CONSTRAINT FK_Localidad_Provincia
FOREIGN KEY (ID_PROVINCIA) 
REFERENCES REINUS.Provincia(ID_PROVINCIA);

--LISTO
ALTER TABLE REINUS.Almacen
ADD CONSTRAINT FK_Almacen_Direccion
FOREIGN KEY (ID_DIDRECCION) 
REFERENCES REINUS.Direccion(ID_DIRECCION);

--listo
ALTER TABLE REINUS.Publicacion
ADD CONSTRAINT FK_Publicacion_Producto
FOREIGN KEY (PRODUCTO_ID) 
REFERENCES REINUS.Producto(ID_PRODUCTO);

--listo
ALTER TABLE REINUS.Publicacion
ADD CONSTRAINT FK_Publicacion_Vendedor
FOREIGN KEY (VENDEDOR_ID) 
REFERENCES REINUS.Vendedor(ID_VENDEDOR);


--anda
ALTER TABLE REINUS.Publicacion
ADD CONSTRAINT FK_Publicacion_Producto
FOREIGN KEY (PRODUCTO_ID) 
REFERENCES REINUS.Producto(ID_PRODUCTO);



--HECHA

ALTER TABLE REINUS.Subrubro
ADD CONSTRAINT FK_Subrubro_Rubro
FOREIGN KEY (RUBRO_ID) 
REFERENCES REINUS.Rubro(ID_RUBRO);

ALTER TABLE REINUS.Producto
ADD CONSTRAINT FK_Producto_Modelo
FOREIGN KEY (ID_MODELO) 
REFERENCES REINUS.Modelo(ID_MODELO);

--ver esta
ALTER TABLE REINUS.Producto
ADD CONSTRAINT FK_Producto_Marca
FOREIGN KEY (ID_MARCA) 
REFERENCES REINUS.Marca(ID_MARCA);

-- HECHAS ESTA
ALTER TABLE REINUS.Producto
ADD CONSTRAINT FK_Producto_Subrubro
FOREIGN KEY (SUBRUBRO_ID) 
REFERENCES REINUS.Subrubro(ID_SUBRUBRO);

ALTER TABLE REINUS.Detalle_Pago
ADD CONSTRAINT FK_DetallePago_MedioPago
FOREIGN KEY (MEDIO_PAGO_ID) 
REFERENCES REINUS.MedioPago(ID_MEDIO_PAGO);

ALTER TABLE REINUS.MedioPago
ADD CONSTRAINT FK_MedioPago_Pago
FOREIGN KEY (ID_PAGO) 
REFERENCES REINUS.Pago(PAGO_ID);


ALTER TABLE REINUS.Pago
ADD CONSTRAINT FK_Pago_Venta
FOREIGN KEY (VENTA_ID) 
REFERENCES REINUS.Venta(ID_VENTA);

--LISTO
ALTER TABLE REINUS.Venta
ADD CONSTRAINT FK_Venta_Cliente
FOREIGN KEY (CLIENTE_ID) 
REFERENCES REINUS.Cliente(ID_CLIENTE);

ALTER TABLE REINUS.Venta
ADD CONSTRAINT FK_Venta_Envio
FOREIGN KEY (ENVIO_ID) 
REFERENCES REINUS.Envio(ENVIO_ID);

-- HECHAS ESTAS
ALTER TABLE REINUS.Envio
ADD CONSTRAINT FK_Envio_Domicilio
FOREIGN KEY (DOMICILIO_ID) 
REFERENCES REINUS.Domicilio(ID_DOMICILIO);


ALTER TABLE REINUS.Detalle_Venta
ADD CONSTRAINT FK_Detalle_Venta_Venta
FOREIGN KEY (VENTA_ID) 
REFERENCES REINUS.Venta(ID_VENTA);

------ ES DE LA UCHOS A MUCHOS DE CONCEPTO Y FACTURA 
ALTER TABLE REINUS.Detalle_Factura
ADD CONSTRAINT FK_Detalle_Factura_Factura
FOREIGN KEY(FACTURA_ID)
REFERENCES REINUS.Factura(ID_FACTURA);

ALTER TABLE REINUS.Detalle_Factura
ADD CONSTRAINT FK_Detalle_Factura_Concepto
FOREIGN KEY (CONCEPTO_ID)
REFERENCES REINUS.Concepto(ID_CONCEPTO);


---------------------------------------MIGRACIONES--------------------------------------------
-- Vamos por las mas sencillas provicia, localidad

-- Migraci�n de Provincia
  --------------------------MIGRACION PROVINCIA----------------
GO

CREATE PROCEDURE REINUS.migrar_provincia AS 
BEGIN 
INSERT INTO REINUS.Provincia(NOMBRE)
SELECT DISTINCT VEN_USUARIO_DOMICILIO_PROVINCIA  AS NOMBRE
FROM gd_esquema.Maestra
WHERE VEN_USUARIO_DOMICILIO_PROVINCIA IS NOT NULL

UNION

SELECT DISTINCT CLI_USUARIO_DOMICILIO_PROVINCIA
FROM gd_esquema.Maestra
WHERE CLI_USUARIO_DOMICILIO_PROVINCIA IS NOT NULL

UNION

SELECT DISTINCT ALMACEN_PROVINCIA
FROM gd_esquema.Maestra
WHERE ALMACEN_PROVINCIA IS NOT NULL;
END
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrar_provincia; 
COMMIT TRANSACTION;
GO


/** ---------------------MIGRACION DE LOCALIDAD----------------*/
CREATE PROCEDURE REINUS.migrar_Localidad AS 
BEGIN 
INSERT INTO REINUS.Localidad(NOMBRE,ID_PROVINCIA)
SELECT DISTINCT VEN_USUARIO_DOMICILIO_LOCALIDAD  AS NOMBRE, ID_PROVINCIA
FROM gd_esquema.Maestra
JOIN REINUS.Provincia on NOMBRE = VEN_USUARIO_DOMICILIO_PROVINCIA
WHERE VEN_USUARIO_DOMICILIO_LOCALIDAD IS NOT NULL

UNION

SELECT DISTINCT CLI_USUARIO_DOMICILIO_LOCALIDAD AS NOMBRE, ID_PROVINCIA
FROM gd_esquema.Maestra
join REINUS.Provincia on NOMBRE = CLI_USUARIO_DOMICILIO_PROVINCIA
WHERE CLI_USUARIO_DOMICILIO_PROVINCIA  IS NOT NULL

UNION
SELECT DISTINCT ALMACEN_Localidad AS NOMBRE, ID_PROVINCIA
FROM gd_esquema.Maestra
join REINUS.Provincia on NOMBRE = ALMACEN_PROVINCIA
WHERE ALMACEN_PROVINCIA  IS NOT NULL
END;
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrar_Localidad; 
COMMIT TRANSACTION;
GO

  --------------------------MIGRACION DIRECCION Y DOMICILIO-----------------



CREATE PROCEDURE REINUS.migrar_direccion AS
BEGIN
    -- Inserta en la tabla Direccion
    INSERT INTO REINUS.Direccion (CALLE, NUM_CALLE, LOCALIDAD_ID)
    SELECT DISTINCT M.VEN_USUARIO_DOMICILIO_CALLE, M.VEN_USUARIO_DOMICILIO_NRO_CALLE, L.ID_LOCALIDAD
    FROM GD2C2024.gd_esquema.Maestra M
    JOIN REINUS.Localidad L ON M.VEN_USUARIO_DOMICILIO_LOCALIDAD = L.NOMBRE --joineo con eso
    WHERE M.VEN_USUARIO_DOMICILIO_CALLE IS NOT NULL 
      AND M.VEN_USUARIO_DOMICILIO_NRO_CALLE IS NOT NULL

    UNION

    SELECT DISTINCT M.CLI_USUARIO_DOMICILIO_CALLE, M.CLI_USUARIO_DOMICILIO_NRO_CALLE, L.ID_LOCALIDAD
    FROM GD2C2024.gd_esquema.Maestra M
    JOIN REINUS.Localidad L ON M.CLI_USUARIO_DOMICILIO_LOCALIDAD = L.NOMBRE
    WHERE M.CLI_USUARIO_DOMICILIO_CALLE IS NOT NULL 
      AND M.CLI_USUARIO_DOMICILIO_NRO_CALLE IS NOT NULL

    UNION

    SELECT DISTINCT M.ALMACEN_CALLE, M.ALMACEN_NRO_CALLE, L.ID_LOCALIDAD
    FROM GD2C2024.gd_esquema.Maestra M
    JOIN REINUS.Localidad L ON M.ALMACEN_Localidad = L.NOMBRE
    WHERE M.ALMACEN_CALLE IS NOT NULL 
      AND M.ALMACEN_NRO_CALLE IS NOT NULL;
END;
GO

CREATE PROCEDURE REINUS.migrar_domicilio AS
BEGIN
    -- Parte del domiciio
    --INSERT INTO REINUS.Domicilio (PISO, DEPTO, CP, USUARIO_ID, DIRECCION_ID)
	INSERT INTO REINUS.Domicilio (PISO, DEPTO, CP, DIRECCION_ID)
    SELECT DISTINCT 
        M.VEN_USUARIO_DOMICILIO_PISO,
        M.VEN_USUARIO_DOMICILIO_DEPTO,
        M.VEN_USUARIO_DOMICILIO_CP,
       
       -- M.VENDEDOR_RAZON_SOCIAL AS USUARIO_ID, 
        D.ID_DIRECCION 
    FROM GD2C2024.gd_esquema.Maestra M
    JOIN REINUS.Direccion D 
        ON M.VEN_USUARIO_DOMICILIO_CALLE = D.CALLE 
        AND M.VEN_USUARIO_DOMICILIO_NRO_CALLE = D.NUM_CALLE
    WHERE M.VEN_USUARIO_DOMICILIO_CALLE IS NOT NULL 
      AND M.VEN_USUARIO_DOMICILIO_NRO_CALLE IS NOT NULL

	UNION
	
	SELECT DISTINCT 
        M.CLI_USUARIO_DOMICILIO_PISO,
        M.CLI_USUARIO_DOMICILIO_DEPTO,
        M.CLI_USUARIO_DOMICILIO_CP,
       
       -- M.VENDEDOR_RAZON_SOCIAL AS USUARIO_ID, 
        D.ID_DIRECCION 
    FROM GD2C2024.gd_esquema.Maestra M
    JOIN REINUS.Direccion D 
        ON M.CLI_USUARIO_DOMICILIO_CALLE = D.CALLE 
        AND M.CLI_USUARIO_DOMICILIO_NRO_CALLE = D.NUM_CALLE
    WHERE M.CLI_USUARIO_DOMICILIO_CALLE IS NOT NULL 
      AND M.CLI_USUARIO_DOMICILIO_NRO_CALLE IS NOT NULL;

END;
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrar_direccion; 
COMMIT TRANSACTION;
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrar_domicilio; 
COMMIT TRANSACTION;
GO



------------------------------MIGRAR CLIENTE------------------------------------
CREATE PROCEDURE REINUS.migrarCliente
AS 
BEGIN
INSERT INTO REINUS.Cliente(NOMBRE, APELLIDO, FECHA_NAC, MAIL,DNI)
SELECT DISTINCT CLIENTE_NOMBRE, CLIENTE_APELLIDO, CLIENTE_FECHA_NAC,CLIENTE_MAIL, CLIENTE_DNI
FROM gd_esquema.Maestra
WHERE CLIENTE_NOMBRE IS NOT NULL 
AND CLIENTE_APELLIDO IS NOT NULL
AND CLIENTE_FECHA_NAC IS NOT NULL
AND CLIENTE_MAIL IS NOT NULL
AND CLIENTE_DNI IS NOT NULL
END 
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrarCliente; 
COMMIT TRANSACTION;
GO
DROP PROCEDURE REINUS.migrarCliente;
GO

------------------------------MIGRAR VENDEDOR----------------------------------
CREATE PROCEDURE REINUS.migrarVendedor
AS 
BEGIN
INSERT INTO REINUS.Vendedor(RAZON_SOCIAL, CUIT, MAIL)
SELECT DISTINCT VENDEDOR_RAZON_SOCIAL,VENDEDOR_CUIT, VENDEDOR_MAIL
FROM gd_esquema.Maestra
WHERE VENDEDOR_CUIT IS NOT NULL 
END 
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrarVendedor;
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrarVendedor;
GO

---------------------------------MIGRAR USUARIO ------------------------

-- Tiene que migrarse los dnis duplicaods, no podemos poner DISTINCT 
-- Y tener en cuenta que el vendedor tiene cuits duplicados
----MIGRAR EL USUARIO
-- Migrar usuarios que son clientes y vendedores
-- Aca hay que ver porque hay dni duplicados, cuits duplicados y necesitamos que la info se migre igual
CREATE PROCEDURE REINUS.migrar_usuarios
AS
BEGIN
INSERT INTO REINUS.Usuario (NOMBRE, PASS, FECHA_CREACION, CLIENTE_ID, VENDEDOR_ID)
SELECT DISTINCT 
    M.VEN_USUARIO_NOMBRE AS NOMBRE,
    M.VEN_USUARIO_PASS AS PASS,
    M.VEN_USUARIO_FECHA_CREACION AS FECHA_CREACION,
	V.ID_VENDEDOR AS VENDEDOR_ID,
	C.ID_CLIENTE AS CLIENTE_ID

FROM GD2C2024.gd_esquema.Maestra M
	LEFT JOIN REINUS.Cliente C ON M.CLIENTE_DNI = C.DNI -- esto es para que acepte duplicados de dni
	LEFT JOIN REINUS.Vendedor V ON M.VENDEDOR_CUIT= V.CUIT -- esto es para que acepte duplicado

WHERE M.VEN_USUARIO_NOMBRE IS NOT NULL
  AND M.VEN_USUARIO_PASS IS NOT NULL
  AND M.VEN_USUARIO_FECHA_CREACION IS NOT NULL
  AND V.ID_VENDEDOR IS NOT NULL
  AND C.ID_CLIENTE IS NULL

 UNION

 SELECT DISTINCT 
    M.CLI_USUARIO_NOMBRE AS NOMBRE,
    M.CLI_USUARIO_PASS AS PASS,
    M.CLI_USUARIO_FECHA_CREACION AS FECHA_CREACION,
	C.ID_CLIENTE AS CLIENTE_ID,
	V.ID_VENDEDOR AS VENDEDOR_ID

FROM GD2C2024.gd_esquema.Maestra M
	LEFT JOIN REINUS.Cliente C ON M.CLIENTE_DNI = C.DNI -- esto es para que acepte duplicados de dni
	LEFT JOIN REINUS.Vendedor V ON M.VENDEDOR_CUIT= V.CUIT -- esto es para que acepte duplicado

WHERE M.CLI_USUARIO_NOMBRE IS NOT NULL
  AND M.CLI_USUARIO_PASS IS NOT NULL
  AND M.CLI_USUARIO_FECHA_CREACION IS NOT NULL
  AND C.ID_CLIENTE IS NOT NULL
  AND V.ID_VENDEDOR IS NULL

UNION
 SELECT DISTINCT
	M.CLI_USUARIO_NOMBRE AS NOMBRE,
    M.CLI_USUARIO_PASS AS PASS,
    M.CLI_USUARIO_FECHA_CREACION AS FECHA_CREACION,
	C.ID_CLIENTE AS CLIENTE_ID,
	V.ID_VENDEDOR AS VENDEDOR_ID

FROM GD2C2024.gd_esquema.Maestra M
	LEFT JOIN REINUS.Cliente C ON M.CLIENTE_DNI = C.DNI -- esto es para que acepte duplicados de dni
	LEFT JOIN REINUS.Vendedor V ON M.VENDEDOR_CUIT= V.CUIT -- esto es para que acepte duplicado

  WHERE M.CLI_USUARIO_NOMBRE IS NOT NULL
		AND M.CLI_USUARIO_PASS IS NOT NULL
		AND M.CLI_USUARIO_FECHA_CREACION IS NOT NULL
		AND (C.ID_CLIENTE IS NOT NULL AND V.ID_VENDEDOR IS NOT NULL);
END
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrar_usuarios;
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrar_usuarios;
GO

  /*INSERT INTO REINUS.Usuario (NOMBRE, PASS, FECHA_CREACION, CLIENTE_ID, VENDEDOR_ID)
SELECT DISTINCT 
    M.VEN_USUARIO AS NOMBRE,
    M.VEN_USUARIO_PASS AS PASS,
    M.VEN_USUARIO_FECHA_CREACION AS FECHA_CREACION,
    -- Permitir duplicados de DNI para clientes
    (SELECT TOP 1 C.ID_CLIENTE 
     FROM REINUS.Cliente C 
     WHERE C.DNI = M.VEN_USUARIO_DNI) AS CLIENTE_ID,
    -- Permitir duplicados de CUIT para vendedores
    (SELECT TOP 1 V.ID_VENDEDOR 
     FROM REINUS.Vendedor V 
     WHERE V.CUIT = M.VEN_USUARIO_CUIT) AS VENDEDOR_ID
FROM GD2C2024.gd_esquema.Maestra M
WHERE M.VEN_USUARIO IS NOT NULL
  AND M.VEN_USUARIO_PASS IS NOT NULL
  AND M.VEN_USUARIO_FECHA_CREACION IS NOT NULL;
*/

--- Copio esta segunda opcion porque hay que ver cual funcoona


-------------------------------MIGRACION DE ALMACEN ----------------------------------
CREATE PROCEDURE REINUS.migrar_almacen AS
BEGIN
INSERT INTO REINUS.Almacen 
SELECT DISTINCT 
    M.ALMACEN_CODIGO AS CODIGO,
    D.ID_DIRECCION
FROM GD2C2024.gd_esquema.Maestra M
JOIN REINUS.Direccion D ON M.ALMACEN_CALLE = D.CALLE--
    AND M.ALMACEN_NRO_CALLE = D.NUM_CALLE
JOIN REINUS.Localidad L ON M.ALMACEN_Localidad = L.NOMBRE-- no se si este hace falta
WHERE M.ALMACEN_CODIGO IS NOT NULL;
END 
GO


BEGIN TRANSACTION; 
EXECUTE REINUS.migrar_almacen;
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrar_almacen
GO

-----------------------MIGRACION DE CONCEPTO--ESTE ANDVUO---------------------------

CREATE PROCEDURE REINUS.migrarConcepto
AS
BEGIN
INSERT INTO REINUS.Concepto(FACTURA_DET_TIPO)
SELECT DISTINCT M.FACTURA_DET_TIPO
FROM gd_esquema.Maestra M
WHERE FACTURA_DET_TIPO IS NOT NULL
END 
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrarConcepto;
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrarConcepto;
GO



-----------------------------MIGRACION DE FACTURA-------------------------
CREATE PROCEDURE migrarFactura 
AS
BEGIN
INSERT INTO REINUS.Factura
SELECT M.FACTURA_NUMERO,M.FACTURA_FECHA,M.FACTURA_TOTAL, U.ID_USUARIO
FROM GD2C2024.gd_esquema.Maestra M
LEFT JOIN REINUS.Usuario U ON M.VEN_USUARIO_NOMBRE = U.NOMBRE
END 
GO



----------------------MIGRACION DE DETALLE FACTURA-------------------------
INSERT INTO REINUS.DetalleFactura 
SELECT M.FACTURA_DET_SUBTOTAL,M.FACTURA_DET_PRECIO,M.FACTURA_DET_CANTIDAD,F.FACTURA_NUMERO, C.CONCEPTO_ID
FROM GD2C2024.gd_esquema.Maestra M
LEFT JOIN REINUS.Concepto C ON M.FACTURA_DET_TIPO = C.FACTURA_DET_TIPO
LEFT JOIN REINUS.Factura F ON M.FACTURA_NUMERO = F.FACTURA_NUMERO --> ES la pk no se si andaran
WHERE M.FACTURA_DET_SUBTOTAL IS NOT NULL
  AND M.FACTURA_DET_PRECIO IS NOT NULL
  AND M.FACTURA_DET_CANTIDAD IS NOT NULL;

END
GO

------------------ ------MIGRACION DE MARCA------------------------------
--ESTE TAMBIEN ANDUVO
CREATE PROCEDURE REINUS.migrar_marca AS
BEGIN 
INSERT INTO REINUS.Marca
SELECT DISTINCT PRODUCTO_MARCA  
FROM gd_esquema.Maestra
WHERE PRODUCTO_MARCA IS NOT NULL
END ;
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrar_marca;
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrar_marca;
GO

-------------------------MIGRACION DE MODELO ----------------------------
CREATE PROCEDURE REINUS.migrar_modelo
AS
BEGIN
INSERT INTO REINUS.Modelo
SELECT DISTINCT m.PRODUCTO_MOD_DESCRIPCION,m.PRODUCTO_MOD_CODIGO  
FROM gd_esquema.Maestra m
WHERE m.PRODUCTO_MOD_DESCRIPCION IS NOT NULL AND m.PRODUCTO_MOD_CODIGO IS NOT NULL
END ;
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrar_modelo;
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrar_modelo;
GO
-------------------------MIGRACION DE RUBRO  ----------------------------

--- RUBRO Y SUBRUBRO
--esto si anduvo BIENN
CREATE PROCEDURE REINUS.migrarRubro AS
BEGIN
INSERT INTO REINUS.Rubro(PRODUCTO_RUBRO_DESCRIPCION)
SELECT DISTINCT PRODUCTO_RUBRO_DESCRIPCION  AS PRODUCTO_RUBRO_DESCRIPCION
FROM gd_esquema.Maestra
WHERE PRODUCTO_RUBRO_DESCRIPCION IS NOT NULL
END
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrarRubro; 
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrarRubro;
GO

---------
CREATE PROCEDURE REINUS.migrarSubRubro AS
BEGIN
INSERT INTO REINUS.Subrubro(PRODUCTO_SUB_RUBRO, RUBRO_ID)
SELECT DISTINCT PRODUCTO_SUB_RUBRO  AS PRODUCTO_SUB_RUBRO, ID_RUBRO
FROM gd_esquema.Maestra M
JOIN REINUS.Rubro R on M.PRODUCTO_RUBRO_DESCRIPCION = R.PRODUCTO_RUBRO_DESCRIPCION --creo que le psuimos en si el mismo nombre
WHERE PRODUCTO_SUB_RUBRO IS NOT NULL
END
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrarSubRubro; 
COMMIT TRANSACTION;
GO
DROP PROCEDURE REINUS.migrarSubRubro
GO


-------------------MIGRACION DE PRODUCTO------------------- 
CREATE PROCEDURE REINUS.migrarProducto
AS
BEGIN 
INSERT INTO REINUS.Producto(CODIGO, ID_MODELO, PRECIO,SUBRUBRO_ID, ID_MARCA)
SELECT M.PRODUCTO_CODIGO,
Mo.ID_MODELO, 
M.PRODUCTO_PRECIO,
S.ID_SUBRUBRO,                 -- FK Modelo
Ma.ID_MARCA    
FROM gd_esquema.Maestra M
LEFT JOIN REINUS.Subrubro S ON M.PRODUCTO_SUB_RUBRO =S.PRODUCTO_SUB_RUBRO
LEFT JOIN REINUS.Modelo Mo ON M.PRODUCTO_MOD_DESCRIPCION = Mo.DESCRIPCION -- Mo.CODIGO = M.PRODUCTO_MOD_CODIGO
LEFT JOIN REINUS.Marca Ma ON   M.PRODUCTO_MARCA = Ma.MARCA
WHERE M.PRODUCTO_CODIGO IS NOT NULL
  AND M.PRODUCTO_PRECIO IS NOT NULL;
  END; 
  GO
  
BEGIN TRANSACTION; 
EXECUTE REINUS.migrarProducto;
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrarProducto;
GO

------------------------PARTE ENVIOS------------------------
CREATE PROCEDURE REINUS.migrarTipoEnvio
AS 
BEGIN
INSERT INTO REINUS.Tipo_Envio
SELECT ENVIO_TIPO
FROM gd_esquema.Maestra M
WHERE ENVIO_TIPO IS NOT NULL
GROUP BY ENVIO_TIPO
END 
GO
BEGIN TRANSACTION; 
EXECUTE REINUS.migrarTipoEnvio; 
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrarTipoEnvio;
GO


-- Migracon de envio
CREATE PROCEDURE REINUS.migrarEnvio
AS
BEGIN
INSERT INTO REINUS.Envio 
SELECT M.ENVIO_FECHA_PROGAMADA AS DATE,
       CAST(M.ENVIO_HORA_FIN_INICIO AS DATE),
       CAST(M.ENVIO_HORA_INICIO AS DATE),
	   M.ENVIO_COSTO,
	   M.ENVIO_FECHA_ENTREGA 
FROM gd_esquema.Maestra M
JOIN REINUS.Tipo_Envio T ON M.ENVIO_TIPO = T.TIPO
WHERE M.ENVIO_COSTO IS NULL
  END 
  GO
--NO tiene ningun domicilio, con lo cual no se como lo podemos meter
 
 
BEGIN TRANSACTION; 
EXECUTE REINUS.migrarEnvio; 
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrarEnvio;
GO


---------------------------------------MIGRAR VENTA-----------------------------------------
/*
CREATE PROCEDURE REINUS.migrarVenta
AS
BEGIN
INSERT INTO REINUS.Venta
SELECT M.VENTA_CODIGO,
M.VENTA_DET_CANT,
M.VENTA_DET_PRECIO,
M.VENTA_DET_SUB_TOTAL,
M.VENTA_FECHA,
M.VENTA_TOTAL
FROM gd_esquema.Maestra M
JOIN REINUS.Cliente C ON 
JOIN REINUS.Envio E ON 
WHERE M.ENVIO_COSTO IS NULL
  END 
  
DROP PROCEDURE REINUS.migrarVenta;
GO

*/
CREATE PROCEDURE REINUS.migrarFactura 
AS
BEGIN
    INSERT INTO REINUS.Factura (USUARIO_ID, FECHA, TOTAL)
    SELECT 
        U.ID_USUARIO,      -- Aseg�rate de que el nombre del campo sea correcto
        M.FACTURA_FECHA, 
        M.FACTURA_TOTAL
    FROM 
        GD2C2024.gd_esquema.Maestra M
    LEFT JOIN 
        REINUS.Usuario U ON M.VEN_USUARIO_NOMBRE = U.NOMBRE
END 
GO
BEGIN TRANSACTION; 
EXECUTE REINUS.migrarFactura; 
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrarFactura;
GO

----------------------------------MIGRAR DETALLE DE FACTURA ---------------------------------



---MIGRACION DE DETALLE FACTURA Y CONCEPTOES COMO UNA MUCHOS A MUCHIS
CREATE PROCEDURE REINUS.migrarDetalleFactura
AS 
BEGIN
    INSERT INTO REINUS.Detalle_Factura (FACTURA_ID, CONCEPTO_ID, PRECIO, CANTIDAD, SUBTOTAL)
    SELECT 
        F.FACTURA_NUMERO,  -- Este debe ser el ID �nico de la factura
        C.CONCEPTO_ID,     -- Este debe ser el ID �nico del concepto
        M.FACTURA_DET_PRECIO,
        M.FACTURA_DET_CANTIDAD,
        M.FACTURA_DET_SUBTOTAL
    FROM 
        gd_esquema.Maestra M
    JOIN 
        REINUS.Factura F ON M.FACTURA_NUMERO = F.FACTURA_NUMERO
  JOIN 
        REINUS.Concepto C ON M.FACTURA_DET_TIPO = C.FACTURA_DET_TIPO
    WHERE 
        M.FACTURA_DET_CANTIDAD IS NOT NULL
        AND M.FACTURA_DET_PRECIO  >0
        AND M.FACTURA_DET_SUBTOTAL >0
END 
GO
 
BEGIN TRANSACTION; 
EXECUTE REINUS.migrarDetalleFactura; 
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrarDetalleFactura;
GO
---------------------------------MIGRACION DE PUBLICACION -----------------------

CREATE PROCEDURE REINUS.migrarPublicacion
AS 
BEGIN
    INSERT INTO REINUS.Publicacion (
        CODIGO,
        FECHA,
        FECHA_V,
        DESCRIPCION,
        PRODUCTO_ID,
        STOCK,
        PRECIO,
        VENDEDOR_ID,
        COSTO,
        ALMACEN,
        PORC_VENTA,
        DETALLE_FACTURA_ID
    )
    SELECT 
        M.PUBLICACION_CODIGO,
        M.PUBLICACION_FECHA,
        M.PUBLICACION_FECHA_V,
        M.PUBLICACION_DESCRIPCION,
        P.ID_PRODUCTO AS PRODUCTO_ID,
        M.PUBLICACION_STOCK,
        M.PUBLICACION_PRECIO,
        -- Sucede que jsuto si matcheamos con el vendedor puede haber duplciados entonces este agarra el primero
        (SELECT TOP 1 ID_VENDEDOR FROM REINUS.Vendedor V WHERE V.CUIT = M.VENDEDOR_CUIT) AS VENDEDOR_ID,
        M.PUBLICACION_COSTO,
        A.ID_ALMACEN AS ALMACEN,
        M.PUBLICACION_PORC_VENTA,
          -- Subconsulta para obtener FACTURA_ID en base a FACTURA_NUMERO en Maestra
		  -- Necesutamos juntarlo con algo, y y por eso tenemos el detalle factura y la factura
		  --- y el detalle tiene factura_id, para asi joinearlo con la tabla factura y conseguir factura_nunero
		  -- Factura numero es la relacion que hay la tabla maestra y en la nuestra
        (SELECT D.FACTURA_ID 
         FROM REINUS.Detalle_Factura D
         JOIN REINUS.Factura F ON F.FACTURA_ID = D.FACTURA_ID
         WHERE F.FACTURA_NUMERO = M.FACTURA_NUMERO) AS DETALLE_FACTURA_ID
    FROM 
        gd_esquema.Maestra M
        LEFT JOIN REINUS.Producto P ON P.CODIGO = M.PRODUCTO_CODIGO --este creo que esta bien
        LEFT JOIN REINUS.Almacen A ON A.CODIGO = M.ALMACEN_CODIGO
        
END;
GO

BEGIN TRANSACTION; 
EXECUTE REINUS.migrarPublicacion; 
COMMIT TRANSACTION;
GO

DROP PROCEDURE REINUS.migrarPublicacion;
GO

