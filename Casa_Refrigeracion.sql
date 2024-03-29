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
       Cliente VARCHAR(70)
);
CREATE TABLE IF NOT EXISTS PRODUCTOS_VENDIDOS(
       ID_Venta INT,
       ID_Producto INT,
       Cantidad INT,
       
         FOREIGN KEY (ID_Venta) REFERENCES VENTAS(Nro_venta),
         FOREIGN KEY (ID_Producto) REFERENCES INVENTARIO(ID_Producto),
         PRIMARY KEY (ID_Venta, ID_Producto)
);
CREATE TABLE IF NOT EXISTS ENVIOS(

);
CREATE TABLE IF NOT EXISTS PROVEEDORES(

);
CREATE TABLE IF NOT EXISTS COMPRAS(

);
CREATE TABLE IF NOT EXISTS EMPLEADOS(

);
CREATE TABLE IF NOT EXISTS INVENTARIO(
);