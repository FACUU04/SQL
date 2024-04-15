CREATE SCHEMA CASA_REFRIGERACION;
USE CASA_REFRIGERACION;

CREATE TABLE IF NOT EXISTS NEGOCIO(
	   Nombre VARCHAR(20) NOT NULL,
       Nro_negocio VARCHAR (20) NOT NULL,
       ID INT,
	   Fundacion DATE,
       Rubro VARCHAR(20) NOT NULL,
	   Ubicacionlocal VARCHAR(20),
       Contactoemail VARCHAR(220) NOT NULL,
       CONSTRAINT CHK_Emailformato CHECK (Contactoemail LIKE '%_@_%._%'),
       Telefono INT, 
       CONSTRAINT
       CHECK_telefonoformato CHECK (LENGTH(Telefono) = 10 AND Telefono REGEXP '^[0-9]+$'),
       PRIMARY KEY (ID)
);
CREATE TABLE IF NOT EXISTS PRODUCTOS(
       ID_Producto INT PRIMARY KEY,
       Marca VARCHAR(50),
       Descripcion VARCHAR(180),
	   Categoria INT,
       CodigoFABRICANTE VARCHAR(70),
       Precio VARCHAR(8),
       CantidadSTOCK NUMERIC
);
CREATE TABLE IF NOT EXISTS CATEGORIAS(
       ID_categoria INT PRIMARY KEY,
       Nombre VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS VENTAS(
       Nro_venta INT PRIMARY KEY AUTO_INCREMENT, 
       Fecha DATE,
       Importe INT,
       IDCliente INT,
       IDPRODUCTO INT,
       Cantidad NUMERIC
);

CREATE TABLE IF NOT EXISTS PROVEEDORES(
       ID_Proveedor INT PRIMARY KEY,
       Nombre VARCHAR(70),
       Descripcion VARCHAR(230),
       Contacto VARCHAR(100),
       FechaINICIOrelacion DATE,
       ProductosSUMINISTRADOS VARCHAR(200),
       SitioWEB VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS COMPRAS(
       ID_Compra INT PRIMARY KEY auto_increment,
       ID_Proveedor INT,
       ID_Producto INT,
       Cantidad NUMERIC,
       FECHA DATE
);
CREATE TABLE IF NOT EXISTS EMPLEADOS(
       ID_Empleado INT PRIMARY KEY auto_increment,
       Nombre VARCHAR(30),
       Apellido VARCHAR(30),
       FechaNACIMIENTO DATE,
       FechaINGRESO DATE,
       Puesto_ocupado VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS CLIENTES(
       ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
       Nombre VARCHAR(30),
       Apellido VARCHAR(30),
       FechaNacimiento DATE, 
       DNI NUMERIC(8)
);


ALTER TABLE NEGOCIO
ADD CONSTRAINT fk_empleados
FOREIGN KEY (ID) REFERENCES EMPLEADOS (ID_Empleado),
ADD CONSTRAINT fk_comprasnegocio
FOREIGN KEY (ID) REFERENCES COMPRAS (ID_Compra),
ADD CONSTRAINT fk_productosnegocio
FOREIGN KEY (ID) REFERENCES PRODUCTOS (ID_Producto);

ALTER TABLE PRODUCTOS
ADD CONSTRAINT fk_categoria
FOREIGN KEY (ID_Producto) REFERENCES CATEGORIAS (ID_categoria);

ALTER TABLE VENTAS
ADD CONSTRAINT fk_ventacliente
FOREIGN KEY (IDCliente) REFERENCES CLIENTES (ID_Cliente),
ADD CONSTRAINT fk_ventaproducto
FOREIGN KEY (IDPRODUCTO) REFERENCES PRODUCTOS (ID_Producto);

ALTER TABLE COMPRAS
ADD CONSTRAINT fk_compraproveedor
FOREIGN KEY (ID_Proveedor) REFERENCES PROVEEDORES (ID_Proveedor),
ADD CONSTRAINT fk_compraproducto
FOREIGN KEY (ID_Producto) REFERENCES PRODUCTOS (ID_Producto);
 
 
 -- Esta vista muestra cuales son los productos mas vendidos junto con el importe total
CREATE VIEW Productos_Mas_Vendidos AS
SELECT p.ID_Producto, p.Descripcion, SUM(v.Importe) AS Importe_Total
FROM PRODUCTOS p
JOIN VENTAS v ON p.ID_Producto = v.IDPRODUCTO
GROUP BY p.ID_Producto, p.Descripcion
ORDER BY Importe_Total DESC;


-- Esta vista muestra cuales son los clientes mas frecuentes
CREATE VIEW Clientes_Mas_Frecuentes AS
SELECT c.ID_Cliente, CONCAT(c.Nombre, ' ', c.Apellido) AS Nombre_Completo, COUNT(*) AS Total_Compras
FROM CLIENTES c
JOIN VENTAS v ON c.ID_Cliente = v.IDCliente
GROUP BY c.ID_Cliente, Nombre_Completo
ORDER BY Total_Compras DESC;

-- Esta vista muestra cuales son los productos con bajo STOCK
CREATE VIEW Productos_Bajo_Stock AS
SELECT *
FROM PRODUCTOS
WHERE CantidadSTOCK < 10;

-- Esta vista muestra la cantidad de ventas por mes
CREATE VIEW Ventas_Por_Mes AS
SELECT YEAR(Fecha) AS Anio, MONTH(Fecha) AS Mes, SUM(Importe) AS Total_Ventas
FROM VENTAS
GROUP BY Anio, Mes
ORDER BY Anio DESC, Mes DESC;


CREATE USER 'JulianGutierrez'@'localhost' IDENTIFIED BY 'JG2022';
GRANT SELECT, INSERT, UPDATE, DELETE ON CASA_REFRIGERACION.PRODUCTOS TO 'lectura_escritura'@'localhost';


CREATE USER 'Leon'@'localhost' IDENTIFIED BY '1994Alvarez';
GRANT ALL PRIVILEGES ON CASA_REFRIGERACION.CLIENTES TO 'control_clientes'@'localhost';


CREATE USER 'Facundo'@'localhost' IDENTIFIED BY 'FalcarREFRIGERACION';
GRANT ALL PRIVILEGES ON CASA_REFRIGERACION.EMPLEADOS TO 'control_compras'@'localhost';
GRANT ALL PRIVILEGES ON CASA_REFRIGERACION.PROVEEDORES TO 'control_compras'@'localhost';
GRANT ALL PRIVILEGES ON CASA_REFRIGERACION.COMPRAS TO 'control_compras'@'localhost';


CREATE USER 'Franco'@'localhost' IDENTIFIED BY 'FrancoFALCAR';
GRANT SELECT ON CASA_REFRIGERACION.VENTAS TO 'consulta_ventas_compras'@'localhost';
GRANT SELECT ON CASA_REFRIGERACION.COMPRAS TO 'consulta_ventas_compras'@'localhost';


CREATE USER 'Alvaro'@'localhost' IDENTIFIED BY 'JKL890';
GRANT SELECT, INSERT, UPDATE, DELETE ON CASA_REFRIGERACION.PROVEEDORES TO 'control_proveedores'@'localhost';
GRANT SELECT ON CASA_REFRIGERACION.CATEGORIAS TO 'control_proveedores'@'localhost';
GRANT SELECT ON CASA_REFRIGERACION.PRODUCTOS TO 'control_proveedores'@'localhost';







