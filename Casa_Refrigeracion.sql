CREATE SCHEMA CASA_REFRIGERACION;
USE CASA_REFRIGERACION;

CREATE TABLE IF NOT EXISTS NEGOCIO(
	   Nombre VARCHAR(20) NOT NULL,
       Nro_ID INT, 
	   Fundacion DATE,
       Rubro VARCHAR(20) NOT NULL,
	   Ubicacionlocal VARCHAR(20),
       Contactoemail VARCHAR(220) CONSTRAINT
       CHK_Emailformato CHECK (Contactoemail LIKE '%_@_%._%'),
       Telefono INT, 
       CONSTRAINT
       CHECK_telefonoformato CHECK (LENGTH(Telefono) = 10 AND Telefono REGEXP '^[0-9]+$'),
       PRIMARY KEY (Nro_ID)
);
CREATE TABLE IF NOT EXISTS PRODUCTOS(
       ID INT PRIMARY KEY,
       Marca VARCHAR(50),
       Descripcion VARCHAR(180),
	   Categoria INT,
       CodigoFABRICANTE VARCHAR(70),
       Precio VARCHAR(8)
);
CREATE TABLE IF NOT EXISTS CATEGORIAS(
       ID_categoria INT PRIMARY KEY,
       Nombre VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS VENTAS(
       Nro_venta INT PRIMARY KEY AUTO_INCREMENT, 
       Fecha DATE,
       Importe INT,
       Cliente INT,
       IDPRODUCTO INT,
       Cantidad NUMERIC
);
CREATE TABLE IF NOT EXISTS PRODUCTOS_VENDIDOS(
       ID_Venta INT,
       ID_Producto INT,
       Cantidad INT
);
CREATE TABLE IF NOT EXISTS PROVEEDORES(
       ID_Proovedor INT PRIMARY KEY,
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
CREATE TABLE IF NOT EXISTS PRODUCTOS_INVENTARIO(
       ID_Producto INT,
       ID_Categoria INT,
       Marca VARCHAR(40),
       Descripcion VARCHAR(100),
       Cantidad NUMERIC
);
CREATE TABLE IF NOT EXISTS CLIENTES(
       ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
       Nombre VARCHAR(30),
       Apellido VARCHAR(30),
       FechaNacimiento DATE, 
       DNI NUMERIC(8)
);

ALTER TABLE PRODUCTOS_VENDIDOS 
ADD CONSTRAINT fk_ventas
         FOREIGN KEY (ID_Venta) REFERENCES VENTAS(Nro_venta);
         
ALTER TABLE COMPRAS
ADD CONSTRAINT fk_proveedor
FOREIGN KEY (ID_Proveedor) REFERENCES PROVEEDORES (ID_Proovedor);
