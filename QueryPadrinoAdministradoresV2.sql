
CREATE DATABASE VentasFacturacionPadrino
use VentasFacturacionPadrino

CREATE TABLE Cliente
(
	Cedula NVARCHAR (30) PRIMARY KEY NOT NULL,
	Nombre NVARCHAR(30) NOT NULL,
	Telefono NVARCHAR(16),
	Direccion TEXT NOT NULL
)
--Seleccionar todos los datos de la tabla Cliente ordenados alfabéticamente por el nombre:
SELECT Cedula AS 'Cédula', Nombre AS 'Nombre', Telefono AS 'Teléfono', Direccion AS 'Dirección' FROM Cliente ORDER BY Nombre ASC;

--Seleccionar los datos de la tabla Cliente ordenados por número de teléfono en orden descendente:
SELECT Cedula AS 'Cédula', Nombre AS 'Nombre', Telefono AS 'Teléfono', Direccion AS 'Dirección' FROM Cliente ORDER BY Telefono DESC;

--Seleccionar los nombres y direcciones de los clientes que tengan una dirección que contenga la palabra "avenida":
SELECT Nombre AS 'Nombre', Direccion AS 'Dirección' FROM Cliente WHERE Direccion LIKE '%avenida%' ORDER BY Nombre ASC;

--Seleccionar los datos de la tabla Cliente en orden alfabético inverso por la cédula:
SELECT Cedula AS 'Cédula', Nombre AS 'Nombre', Telefono AS 'Teléfono', Direccion AS 'Dirección' FROM Cliente ORDER BY Cedula DESC;

--Seleccionar los datos de la tabla Cliente ordenados por el número de caracteres en el nombre, de menor a mayor:
SELECT Cedula AS 'Cédula', Nombre AS 'Nombre', Telefono AS 'Teléfono', Direccion AS 'Dirección' FROM Cliente ORDER BY LEN(Nombre) ASC;


INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-100303-1005N', 'Richard Briones', 'Granada, Nicaragua', '88468274');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-123456-789A', 'Fernando Moreira', 'Miguel Gutierrez', '123-456-7890');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-201356-789A', 'Marvin Sevilla', 'Masaya', '123-456-7890');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-010121-789A', 'Juan Pérez', 'Calle 1, #123', '123-456-7890');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-987654-321B', 'María García', 'Avenida 2, #456', '456-789-0123');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-567890-123C', 'Pedro Gómez', 'Calle 3, #789', '789-012-3456');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-234567-890D', 'Laura Torres', 'Avenida 4, #012', '012-345-6789');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-678901-234E', 'Miguel López', 'Calle 5, #345', '345-678-9012');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-345678-901F', 'Lucía González', 'Avenida 6, #678', '678-901-2345');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-789012-345G', 'Carlos Rodríguez', 'Calle 7, #901', '901-234-5678');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-456789-012H', 'Ana Pérez', 'Avenida 8, #234', '234-567-8901');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-901234-567I', 'Jorge García', 'Calle 9, #567', '567-890-1234');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-678901-234J', 'Marina Torres', 'Avenida 10, #890', '890-123-4567');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-345678-901K', 'Pedro López', 'Calle 11, #1234', '123-456-7890');
INSERT INTO cliente (cedula, nombre, direccion, telefono) VALUES ('201-789012-345L', 'Luisa González', 'Avenida 12, #5678', '456-789-0123');
INSERT INTO cliente (Cedula, Nombre, Direccion, Telefono) VALUES ('201-123456-789N', 'Cristina Lopez', 'Ciudad Sandino', '8888-7777');
INSERT INTO cliente (Cedula, Nombre, Direccion, Telefono) VALUES ('201-234567-890K', 'Weychen Cuadrado', 'Avenida 8, Casa 20', '7777-6666');
INSERT INTO cliente (Cedula, Nombre, Direccion, Telefono) VALUES ('201-345678-901J', 'Kirsten Lopez', 'Calle 9, Casa 15', '5555-4444');
INSERT INTO cliente (Cedula, Nombre, Direccion, Telefono) VALUES ('201-456789-012L', 'Priscilla Zelaya', 'Calle 11, Casa 2', '3333-2222');
INSERT INTO cliente (Cedula, Nombre, Direccion, Telefono) VALUES ('201-567890-123N', 'Harold Moreno', 'Calle 10, Casa 4', '1111-0000');
INSERT INTO cliente (Cedula, Nombre, Direccion, Telefono) VALUES ('201-678901-234K', 'Brayan Potosme', 'Avenida 7, Casa 1', '9999-8888');
INSERT INTO cliente (Cedula, Nombre, Direccion, Telefono) VALUES ('201-789012-345J', 'Juan Carlos', 'Calle 8, Casa 3', '7777-6666');
INSERT INTO cliente (Cedula, Nombre, Direccion, Telefono) VALUES ('201-890123-456H', 'Maria Olivas', 'Avenida 10, Casa 5', '5555-4444');
INSERT INTO cliente (Cedula, Nombre, Direccion, Telefono) VALUES ('201-901234-567N', 'Raymar Cruz', 'Calle 12, Casa 6', '3333-2222');
INSERT INTO cliente (Cedula, Nombre, Direccion, Telefono) VALUES ('201-012345-678K', 'Yasser Cruz', 'Avenida 5, Casa 9', '1111-0000');


SELECT * FROM CLIENTE

CREATE TABLE Proveedor
(
	IdProveedor INT PRIMARY KEY IDENTITY NOT NULL,
	CodigoProveedor NVARCHAR (20) NOT NULL,
	Empresa NVARCHAR (30) NOT NULL,
	Direccion TEXT NOT NULL,
	Estado BIT NOT NULL
)
-- Este SELECT muestra todos los campos de la tabla Proveedor, ordenados por el IdProveedor de manera descendente.
SELECT * FROM Proveedor ORDER BY IdProveedor DESC;

-- Este SELECT muestra únicamente los campos Empresa y CodigoProveedor de la tabla Proveedor, para aquellos proveedores cuyo Estado es igual a 1.
SELECT Empresa, CodigoProveedor FROM Proveedor WHERE Estado = 1;

-- Este SELECT muestra los campos IdProveedor, Empresa y Direccion de la tabla Proveedor, para aquellos proveedores cuyo CodigoProveedor contiene la cadena de caracteres 'ABC'.
SELECT IdProveedor, Empresa, Direccion FROM Proveedor WHERE CodigoProveedor LIKE '%ABC%';

-- Este SELECT muestra la cantidad de proveedores activos (Estado = 1) en la tabla Proveedor.
SELECT COUNT(*) AS Cantidad_Proveedores_Activos FROM Proveedor WHERE Estado = 1;

-- Este SELECT muestra los campos IdProveedor, Empresa y Direccion de los primeros 3 proveedores de la tabla Proveedor, ordenados por el IdProveedor de manera ascendente.
SELECT TOP 3 IdProveedor, Empresa, Direccion FROM Proveedor ORDER BY IdProveedor ASC;

INSERT INTO Proveedor (CodigoProveedor, Empresa, Direccion, Estado)
VALUES ('KT-123', 'Kingdom Tech', 'Granada, Nicaragua', 1);
INSERT INTO Proveedor (CodigoProveedor, Empresa, Direccion, Estado)
VALUES ('MH-456', 'Mahalo', 'Managua, Nicaragua', 1);
INSERT INTO Proveedor (CodigoProveedor, Empresa, Direccion, Estado)
VALUES ('IG-789', 'Ipegua', 'Managua, Nicaragua', 1);
INSERT INTO Proveedor (CodigoProveedor, Empresa, Direccion, Estado)
VALUES ('MJ-101', 'Majas Shop', 'Managua, Nicaragua', 1);
INSERT INTO Proveedor (CodigoProveedor, Empresa, Direccion, Estado)
VALUES ('AS-234', 'Alvier Store', 'Managua, Nicaragua', 1);
INSERT INTO Proveedor (CodigoProveedor, Empresa, Direccion, Estado)
VALUES ('MB-567', 'Moda BK Cafe', 'Managua, Nicaragua', 1);
INSERT INTO Proveedor (CodigoProveedor, Empresa, Direccion, Estado)
VALUES ('CQ-890', 'Calzado Qadash', 'Managua, Nicaragua', 1);
INSERT INTO Proveedor (CodigoProveedor, Empresa, Direccion, Estado)
VALUES ('KF-111', 'Kingdom Fit', 'Managua, Nicaragua', 1);
INSERT INTO Proveedor (CodigoProveedor, Empresa, Direccion, Estado)
VALUES ('AT-222', 'Antojos La Tita', 'Managua, Nicaragua', 1);
INSERT INTO Proveedor (CodigoProveedor, Empresa, Direccion, Estado)
VALUES ('DM-333', 'Dulces Mexicanos Nicaragua', 'Managua, Nicaragua', 1);



Create Table TelefonoProveedor
(
	TelefonoProveedorCodigo  INT PRIMARY KEY IDENTITY NOT NULL,
	PaisCodigo NVARCHAR(4) DEFAULT ('+505')NOT NULL,
	Numero_Movil NVARCHAR (8) NOT NULL,
	Proveedor_FK_Codigo INT NOT NULL,
	constraint TP_FK_Codigo FOREIGN KEY (Proveedor_FK_Codigo) REFERENCES Proveedor(IdProveedor)
)
--Seleccionar todos los teléfonos de los proveedores con su respectivo código de proveedor y país:
SELECT TelefonoProveedorCodigo, PaisCodigo + ' ' + Numero_Movil AS Numero_Telefono, Proveedor_FK_Codigo FROM TelefonoProveedor
--Seleccionar los teléfonos de los proveedores que están registrados en un país específico:
SELECT TelefonoProveedorCodigo, PaisCodigo + ' ' + Numero_Movil AS Numero_Telefono, Proveedor_FK_Codigo FROM TelefonoProveedor
WHERE PaisCodigo = '+505'
--Seleccionar el proveedor y su número de teléfono principal (el primero que se registró):
SELECT P.IdProveedor, P.Empresa, TP.PaisCodigo + ' ' + TP.Numero_Movil AS Numero_Telefono FROM Proveedor P INNER JOIN TelefonoProveedor TP ON P.IdProveedor = TP.Proveedor_FK_Codigo WHERE TP.TelefonoProveedorCodigo = (SELECT MIN(TelefonoProveedorCodigo) FROM TelefonoProveedor WHERE Proveedor_FK_Codigo = P.IdProveedor)
--Seleccionar el proveedor y sus números de teléfono en orden alfabético por empresa y número de teléfono:
SELECT P.Empresa, TP.PaisCodigo + ' ' + TP.Numero_Movil AS Numero_Telefono
FROM Proveedor P
INNER JOIN TelefonoProveedor TP ON P.IdProveedor = TP.Proveedor_FK_Codigo
ORDER BY P.Empresa, TP.Numero_Movil
--Seleccionar los proveedores que no tienen número de teléfono registrado:
SELECT P.IdProveedor, P.Empresa
FROM Proveedor P
LEFT JOIN TelefonoProveedor TP ON P.IdProveedor = TP.Proveedor_FK_Codigo
WHERE TP.TelefonoProveedorCodigo IS NULL

Create Table Modulo
(
	IdModulo INT PRIMARY KEY IDENTITY NOT NULL,
	CapacidadModulo NUMERIC(3) NOT NULL,
	StockModulo NUMERIC(3) NOT NULL DEFAULT(0),
	Precio FLOAT NOT NULL,
	Estado BIT NOT NULL
)
--Seleccionar todos los módulos con su información completa:
SELECT IdModulo, CapacidadModulo, StockModulo, Precio, Estado FROM Modulo
--Seleccionar los módulos que tienen un stock menor a cierta cantidad:
SELECT IdModulo, CapacidadModulo, StockModulo, Precio, Estado FROM Modulo WHERE StockModulo < 10
--Seleccionar el precio promedio de los módulos:
SELECT AVG(Precio) AS Precio_Promedio FROM Modulo
--Seleccionar los módulos ordenados por precio de forma descendente:
SELECT IdModulo, CapacidadModulo, StockModulo, Precio, Estado FROM Modulo ORDER BY Precio DESC
--Seleccionar los módulos con stock disponible, es decir, que su stock es mayor que cero:
SELECT IdModulo, CapacidadModulo, StockModulo, Precio, Estado FROM Modulo WHERE StockModulo > 0

-- Módulos con valor de $50
SELECT * FROM Modulo
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (30, 0, 50.00, 1);
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (30, 0, 50.00, 1);
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (30, 0, 50.00, 1);
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (30, 0, 50.00, 1);
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (30, 0, 50.00, 1);

-- Módulos con valor de $60
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (40, 0, 60.00, 1);
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (40, 0, 60.00, 1);
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (40, 0, 60.00, 1);
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (40, 0, 60.00, 1);
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (40, 0, 60.00, 1);

-- Módulos con valor de $70
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (50, 0, 70.00, 1);
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (50, 0, 70.00, 1);
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (50, 0, 70.00, 1);
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (50, 0, 70.00, 1);
INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado) VALUES (50, 0, 70.00, 1);


CREATE TABLE ProveedorModulo
(
    IdProveedorModulo INT PRIMARY KEY IDENTITY NOT NULL,
    ProveedorId INT NOT NULL,
    ModuloId INT NOT NULL,
    CONSTRAINT FK_ProveedorModulo_Proveedor FOREIGN KEY (ProveedorId) REFERENCES Proveedor(IdProveedor),
    CONSTRAINT FK_ProveedorModulo_Modulo FOREIGN KEY (ModuloId) REFERENCES Modulo(IdModulo)
)

--A que modulo le corresponde cada proveedor
SELECT P.Empresa AS NombreProveedor, M.IdModulo AS NumeroModulo
FROM ProveedorModulo PM
JOIN Proveedor P ON PM.ProveedorId = P.IdProveedor
JOIN Modulo M ON PM.ModuloId = M.IdModulo
--cuantos modulos tiene cada proveedor
SELECT P.IdProveedor, P.Empresa, COUNT(*) AS TotalModulos
FROM Proveedor P
JOIN ProveedorModulo PM ON P.IdProveedor = PM.ProveedorId
GROUP BY P.IdProveedor, P.Empresa


SELECT *
FROM Factura_Alquiler
WHERE FechaExpiracion >= GETDATE()
ORDER BY FechaExpiracion ASC


--borrar todo junto a los identity
Delete from ProveedorModulo
DBCC CHECKIDENT ('ProveedorModulo', RESEED, 1);


INSERT INTO ProveedorModulo(ProveedorId,ModuloId)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(1,11),
(2,12),
(3,13),
(4,14),
(5,15);



Create Table Factura_Alquiler
(
	CodigoFacturaAlquiler INT PRIMARY KEY IDENTITY NOT NULL,
	FechaCancelacion DATE NOT NULL,
	FechaExpiracion DATE NOT NULL,
	Mora FLOAT NOT NULL DEFAULT (0),
	MontoTotal FLOAT ,
	Proveedor_FK_Codigo INT not null,
	Modulo_FK_Codigo INT not null,
	CONSTRAINT AP_FK_Codigo FOREIGN KEY (Proveedor_FK_Codigo) REFERENCES Proveedor(IdProveedor),
	CONSTRAINT AM_FK_Codigo FOREIGN KEY (Modulo_FK_Codigo) REFERENCES Modulo(IdModulo)
)
SELECT * FROM Proveedor
SELECT * FROM Modulo
SELECT * FROM Factura_Alquiler


INSERT INTO Factura_Alquiler (FechaCancelacion, FechaExpiracion, Proveedor_FK_Codigo, Modulo_FK_Codigo, MontoTotal)
VALUES
(GETDATE(), DATEADD(month, 1, GETDATE()),1,1,50),
(GETDATE(), DATEADD(month, 1, GETDATE()),2,2,50),
(GETDATE(), DATEADD(month, 1, GETDATE()),3,3,50),
(GETDATE(), DATEADD(month, 1, GETDATE()),4,4,50),
(GETDATE(), DATEADD(month, 1, GETDATE()),5,5,50),
(GETDATE(), DATEADD(month, 1, GETDATE()),6,6,60),
(GETDATE(), DATEADD(month, 1, GETDATE()),7,7,60),
(GETDATE(), DATEADD(month, 1, GETDATE()),8,8,60),
(GETDATE(), DATEADD(month, 1, GETDATE()),9,9,60),
(GETDATE(), DATEADD(month, 1, GETDATE()),10,10,60),
(GETDATE(), DATEADD(month, 1, GETDATE()),1,11,70),
(GETDATE(), DATEADD(month, 1, GETDATE()),2,12,70),
(GETDATE(), DATEADD(month, 1, GETDATE()),3,13,70),
(GETDATE(), DATEADD(month, 1, GETDATE()),4,14,70),
(GETDATE(), DATEADD(month, 1, GETDATE()),5,15,70);
DELETE FROM Factura_Alquiler
DBCC CHECKIDENT ('Factura_Alquiler', RESEED, 1);



INSERT INTO Factura_Alquiler (FechaCancelacion, FechaExpiracion, Proveedor_FK_Codigo, Modulo_FK_Codigo, MontoTotal)
VALUES
(GETDATE(), DATEADD(month, 1, GETDATE()),1,2,50)
delete from Factura_Alquiler where CodigoFacturaAlquiler=16

GO
Create Procedure InsertarFacturaModulos
@IdProveedor int,
@IdModulo int,
@MontoModulo int
AS
BEGIN
INSERT INTO Factura_Alquiler (FechaCancelacion, FechaExpiracion, Mora, MontoTotal, Proveedor_FK_Codigo, Modulo_FK_Codigo)
VALUES (GETDATE(), DATEADD(month, 1, GETDATE()), 0,@MontoModulo , @IdProveedor, @IdModulo)
UPDATE ProveedorModulo
SET ProveedorId = @IdProveedor
WHERE ModuloId = @IdModulo
END

execute InsertarFacturaModulos 2,1,50


CREATE TABLE CategoriaProducto
(
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	Nombre NVARCHAR(20) NOT NULL,
	Estado BIT
)
--Seleccionar todos los campos de la tabla ordenados por nombre de categoría en orden ascendente:
SELECT * FROM CategoriaProducto ORDER BY Nombre ASC;
--Seleccionar solo el nombre y estado de las categorías donde el estado es verdadero:
SELECT Nombre, Estado FROM CategoriaProducto WHERE Estado = 1;
--Seleccionar el ID y nombre de todas las categorías cuyo nombre contiene la palabra "comida":
SELECT IdCategoria, Nombre FROM CategoriaProducto WHERE Nombre LIKE '%Ropa%';
--Seleccionar el nombre y estado de las categorías en orden descendente según su ID:
SELECT Nombre, Estado FROM CategoriaProducto ORDER BY IdCategoria DESC;
--Seleccionar el nombre y cantidad de productos asociados a cada categoría, ordenados por cantidad de productos en orden descendente:
SELECT c.Nombre, COUNT(p.IdProducto) AS Cantidad_Productos
FROM CategoriaProducto c
LEFT JOIN Producto p ON c.IdCategoria = p.Categoria_FK_Codigo GROUP BY c.Nombre ORDER BY Cantidad_Productos DESC;

-- Categoría de productos relacionados con el mundo tecnológico
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Electrónica', 1);
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Computadoras', 1);
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Accesorios', 1);

-- Categoría de productos de suplementos deportivos y vitaminas
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Suplementos', 1);
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Vitaminas', 1);

-- Categoría de productos de accesorios de ropa
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Accesorios de ropa', 1);
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Ropa íntima', 1);

-- Categoría de productos de dulces mexicanos
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Dulces mexicanos', 1);
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Botanas mexicanas', 1);

-- Categoría de productos de calzado hecho a mano
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Calzado hecho a mano', 1);
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Sandalias', 1);

-- Categoría de productos de ropa deportiva
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Ropa para hombres', 1);
INSERT INTO CategoriaProducto (Nombre, Estado) VALUES ('Ropa para mujeres', 1);

Select * from Producto
CREATE TABLE Producto
(
	IdProducto INT PRIMARY KEY IDENTITY NOT NULL,
	Nombre nvarchar(20) NOT NULL,
	StockActual INT NOT NULL,
	Precio FLOAT NOT NULL,
	Descripcion TEXT NOT NULL,
	Proveedor_FK_Codigo INT not null,
	Categoria_FK_Codigo INT not null,
	constraint PP_FK_Codigo FOREIGN KEY (Proveedor_FK_Codigo) REFERENCES Proveedor(IdProveedor),
	constraint PC_FK_Codigo FOREIGN KEY (Categoria_FK_Codigo) REFERENCES CategoriaProducto(IdCategoria)
)
--Seleccionar todos los productos con su nombre, precio, y la categoría a la que pertenecen:
SELECT p.Nombre AS 'Nombre del producto', p.Precio AS 'Precio del producto', c.Nombre AS 'Categoría'
FROM Producto p INNER JOIN CategoriaProducto c ON p.Categoria_FK_Codigo = c.IdCategoria;
--Seleccionar los productos que tienen un precio mayor a $10:
SELECT Nombre AS 'Nombre del producto', Precio AS 'Precio del producto' FROM Producto WHERE Precio > 10;
--Seleccionar los productos que tienen un stock actual menor a 10:
SELECT Nombre AS 'Nombre del producto', StockActual AS 'Stock actual' FROM Producto WHERE StockActual < 10;
--Seleccionar los productos que pertenecen a la categoría "Electrónicos":
SELECT Producto.Nombre AS 'Nombre del producto', Precio AS 'Precio del producto' FROM Producto
INNER JOIN CategoriaProducto ON Producto.Categoria_FK_Codigo = CategoriaProducto.IdCategoria
WHERE CategoriaProducto.Nombre = 'Electrónica';
--Seleccionar los productos con su nombre y su proveedor:
SELECT Nombre AS 'Nombre del producto', Proveedor.Empresa AS 'Proveedor'
FROM Producto INNER JOIN Proveedor ON Producto.Proveedor_FK_Codigo = Proveedor.IdProveedor;



INSERT INTO Producto (Nombre, StockActual, Precio, Descripcion, Proveedor_FK_Codigo, Categoria_FK_Codigo)
VALUES
('Auriculares BT', 50, 29.99, 'Auriculares Bluetooth para disfrutar de tu música sin cables', 1, 3),
('Cargador de Celular', 100, 14.99, 'Cargador de pared para celular con puerto USB', 1, 3),
('Proteína en polvo', 50, 25.99, 'Suplemento para aumentar la masa muscular', 8, 4),
('Bocina portátil JBL', 8, 149.99, 'Conectividad Bluetooth, batería de 4800mAh, resistente al agua', 1, 1),
('Creatine Drive', 25, 700, 'Creatina monohidratada sin sabor 60 scoops', 8, 4),
('Vitaminas Centrum ', 50, 25.99, 'Fórmula completa de vitaminas y minerales para adultos', 5, 5),
('Multivitamínico', 100, 15.99, 'Proporciona vitaminas y minerales esenciales para el cuerpo', 8, 4),
('Control PS4', 20, 39.99, 'Control inalámbrico para PlayStation 4', 1, 1),
('Laptop Lenovo', 10, 799.99, 'Procesador Intel Core i5, 8GB RAM, 512GB SSD', 1, 2),
('BCAA en cápsulas', 80, 18.99, 'Ayuda a reducir la fatiga muscular y mejorar la recuperación', 8, 4),
('Fifa 22 PS4', 5, 59.99, 'Última entrega del famoso juego de fútbol para PS4', 3, 1),
('Teclado gamer', 15, 69.99, 'Teclado mecánico para gaming con retroiluminación', 1, 3),
('Quemador de grasa', 30, 34.99, 'Ayuda a quemar grasa y mejorar el rendimiento', 8, 4),
('Creatina en polvo', 20, 20.99, 'Ayuda a aumentar la fuerza y la resistencia muscular', 8, 4),
('Audífonos Gamer', 10, 79.99, 'Audífonos inalámbricos para gaming con micrófono', 1, 3),
('GTA V PS4', 7, 29.99, 'Juego de mundo abierto con acción y aventuras para PS4', 3, 1),
('Mouse Gamer', 12, 49.99, 'Mouse óptico para gaming con luces LED', 1, 3),
('Cámara deportiva', 8, 119.99, 'Cámara deportiva HD para grabar tus aventuras', 1, 3),
('Juego de mesa', 25, 19.99, 'Juego de mesa de estrategia para toda la familia', 1, 3),
('Dulce de Tamarindo', 50, 12.50, 'Delicioso dulce de tamarindo con chile', 10, 8),
('Chiclosos de Mango', 100, 7.99, 'Chiclosos de mango con chile y sal', 10, 8),
('Paletas de Piña', 75, 8.99, 'Paletas de piña colada con coco rallado', 10, 8),
('Cajeta de Leche', 20, 15.99, 'Cajeta de leche de cabra con nueces', 10, 8),
('Mazapán ', 200, 5.99, 'Mazapán con cacahuate natural', 10, 8),
('Gomitas', 150, 6.99, 'Gomitas de chamoy con chile picante', 10, 8);


go
CREATE PROCEDURE SP_Load_Productos
as
begin
Select Nombre, StockActual, Precio, Descripcion From Producto where Estado = 1
end

CREATE TABLE RegistroProducto
(
	IdRegistro INT PRIMARY KEY IDENTITY(000001,1) NOT NULL,
	CantidadSuministrada INT NOT NULL,
	FechaSuministrada DATE DEFAULT(getdate()),
	Producto_FK_Coidgo INT
	FOREIGN KEY REFERENCES Producto(IdProducto) NOT NULL
)
--Seleccionar todos los registros de la tabla en orden descendente por fecha de suministro:
SELECT *
FROM RegistroProducto
ORDER BY FechaSuministrada DESC;
--Seleccionar los registros de la tabla con la cantidad suministrada mayor o igual a 100:
SELECT *
FROM RegistroProducto
WHERE CantidadSuministrada >= 100;
--Seleccionar los registros de la tabla con la fecha de suministro igual a '2023-05-04':
SELECT *
FROM RegistroProducto
WHERE FechaSuministrada = '2023-05-03';
--Seleccionar el número total de registros en la tabla:
SELECT COUNT(*) AS TotalRegistros
FROM RegistroProducto;
--Seleccionar la cantidad promedio de productos suministrados por registro:

SELECT AVG(CantidadSuministrada) AS PromedioCantidad
FROM RegistroProducto;



INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (50, 1);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (100, 2);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (25, 3);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (8, 4);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (50, 5);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (100, 6);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (20, 7);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (30, 8);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (80, 9);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (5, 10);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (15, 11);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (30, 12);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (20, 13);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (10, 14);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (7, 15);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (12, 16);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (8, 17);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (25, 18);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (50, 19);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (75, 20);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (20, 21);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (200, 22);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (150, 23);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (20, 24);

INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
VALUES (150, 25);


CREATE TABLE Modulo_Producto
(
	IdModuloProducto int primary key identity(1,1) not null,
	CantidadProductos int not null,
	Producto_FK_Codigo int not null,
	Modulo_FK_Codigo int not null,
	constraint Producto_FK_Codigo foreign key (Producto_FK_Codigo) references Producto(IdProducto),
	constraint Modulo_FK_Codigo foreign key (Modulo_FK_Codigo) references Modulo(IdModulo)
)

--Obtener la cantidad de productos y el nombre del módulo al que están asignados:
SELECT CantidadProductos, m.IdModulo as Modulo, p.Nombre as Producto
FROM Modulo_Producto mp
JOIN Modulo m ON mp.Modulo_FK_Codigo = m.IdModulo
JOIN Producto p ON mp.Producto_FK_Codigo = p.IdProducto
--Obtener la cantidad de productos asignados a cada módulo:
SELECT Modulo_FK_Codigo, SUM(CantidadProductos) as TotalProductos
FROM Modulo_Producto
GROUP BY Modulo_FK_Codigo
--Obtener el nombre del producto y la cantidad de productos asignados a cada módulo:
SELECT p.Nombre as Producto, mp.CantidadProductos, m.IdModulo as Modulo
FROM Modulo_Producto mp
JOIN Modulo m ON mp.Modulo_FK_Codigo = m.IdModulo
JOIN Producto p ON mp.Producto_FK_Codigo = p.IdProducto
--Obtener la cantidad total de productos asignados a todos los módulos:
SELECT SUM(CantidadProductos) as TotalProductos
FROM Modulo_Producto
--Obtener la cantidad de productos y el nombre del módulo al que están asignados, ordenados por nombre de módulo en orden ascendente:
SELECT CantidadProductos, m.IdModulo as Modulo, p.Nombre as Producto
FROM Modulo_Producto mp
JOIN Modulo m ON mp.Modulo_FK_Codigo = m.IdModulo
JOIN Producto p ON mp.Producto_FK_Codigo = p.IdProducto
ORDER BY m.IdModulo ASC

INSERT INTO Modulo_Producto (CantidadProductos, Producto_FK_Codigo, Modulo_FK_Codigo) VALUES (10, 1, 1);
INSERT INTO Modulo_Producto (CantidadProductos, Producto_FK_Codigo, Modulo_FK_Codigo) VALUES (5, 2, 1);
INSERT INTO Modulo_Producto (CantidadProductos, Producto_FK_Codigo, Modulo_FK_Codigo) VALUES (20, 3, 2);
INSERT INTO Modulo_Producto (CantidadProductos, Producto_FK_Codigo, Modulo_FK_Codigo) VALUES (8, 4, 2);
INSERT INTO Modulo_Producto (CantidadProductos, Producto_FK_Codigo, Modulo_FK_Codigo) VALUES (15, 5, 3);

CREATE TABLE AgenciaEnvios
(
	IdAgencia int primary key identity not null,
	CodigoAgencia nvarchar(20) not null,
	Nombre nvarchar(50) not null,
	Estado BIT NOT NULL
)
--Seleccionar todas las columnas de la tabla AgenciaEnvios y ordenarlas por el campo Nombre en orden ascendente:
SELECT * FROM AgenciaEnvios ORDER BY Nombre ASC
--Seleccionar el IdAgencia y el Nombre de las agencias de envío activas (Estado = 1):
SELECT IdAgencia, Nombre FROM AgenciaEnvios WHERE Estado = 1
--Seleccionar la cantidad de agencias de envío registradas en la tabla:
SELECT COUNT(*) AS CantidadAgencias FROM AgenciaEnvios
--Seleccionar la agencia de envío con el IdAgencia = 3:
SELECT * FROM AgenciaEnvios WHERE IdAgencia = 3
--Seleccionar el CodigoAgencia y el Estado de las agencias de envío ordenadas por el campo CodigoAgencia en orden descendente:
SELECT CodigoAgencia, Estado FROM AgenciaEnvios ORDER BY CodigoAgencia DESC

SELECT * FROM AgenciaEnvios WHERE Estado = 1
INSERT INTO AgenciaEnvios (CodigoAgencia, Nombre, Estado) VALUES ('EDN', 'Envios de Nicaragua', 1);
INSERT INTO AgenciaEnvios (CodigoAgencia, Nombre, Estado) VALUES ('CT', 'CargoTrans', 1);
INSERT INTO AgenciaEnvios (CodigoAgencia, Nombre, Estado) VALUES ('UPS', 'United Parcel Service', 1);
INSERT INTO AgenciaEnvios (CodigoAgencia, Nombre, Estado) VALUES ('DHL', 'DHL Express', 1);
INSERT INTO AgenciaEnvios (CodigoAgencia, Nombre, Estado) VALUES ('Estafeta', 'Estafeta Mexicana', 1);
INSERT INTO AgenciaEnvios (CodigoAgencia, Nombre, Estado) VALUES ('TNT', 'TNT Express', 1);
INSERT INTO AgenciaEnvios (CodigoAgencia, Nombre, Estado) VALUES ('FedEx', 'FedEx Express', 1);
INSERT INTO AgenciaEnvios (CodigoAgencia, Nombre, Estado) VALUES ('SkyPostal', 'SkyPostal Network', 1);
INSERT INTO AgenciaEnvios (CodigoAgencia, Nombre, Estado) VALUES ('Redpack', 'Redpack Servicios de Entrega', 1);
INSERT INTO AgenciaEnvios (CodigoAgencia, Nombre, Estado) VALUES ('Paquetexpress', 'Paquetexpress', 1);
INSERT INTO AgenciaEnvios (CodigoAgencia, Nombre, Estado) VALUES ('MRW', 'MRW Mensajeros, Rápidos y Seguros', 1);

CREATE TABLE TelefonoAgenciaEnvios
(
	TelefonoAgenciaCodigo  INT PRIMARY KEY IDENTITY NOT NULL,
	PaisCodigo NVARCHAR(5) DEFAULT ('+505')NOT NULL,
	Numero_Movil NVARCHAR (16) NOT NULL,
	Agencia_FK_Codigo INT NOT NULL,
	constraint A_FK_Codigo FOREIGN KEY (Agencia_FK_Codigo) REFERENCES AgenciaEnvios(IdAgencia)
)


SELECT * FROM TelefonoAgenciaEnvios;

SELECT TelefonoAgenciaCodigo, PaisCodigo, Numero_Movil, AgenciaEnvios.Nombre
FROM TelefonoAgenciaEnvios
INNER JOIN AgenciaEnvios ON TelefonoAgenciaEnvios.Agencia_FK_Codigo = AgenciaEnvios.IdAgencia;

SELECT AgenciaEnvios.Nombre, COUNT(*) AS Num_Telefonos
FROM TelefonoAgenciaEnvios
INNER JOIN AgenciaEnvios ON TelefonoAgenciaEnvios.Agencia_FK_Codigo = AgenciaEnvios.IdAgencia
GROUP BY AgenciaEnvios.Nombre;

SELECT AgenciaEnvios.Nombre, MIN(PaisCodigo + Numero_Movil) AS Telefono_Principal
FROM TelefonoAgenciaEnvios
INNER JOIN AgenciaEnvios ON TelefonoAgenciaEnvios.Agencia_FK_Codigo = AgenciaEnvios.IdAgencia
GROUP BY AgenciaEnvios.Nombre;

SELECT AgenciaEnvios.Nombre, MAX(PaisCodigo + Numero_Movil) AS Telefono_Secundario
FROM TelefonoAgenciaEnvios
INNER JOIN AgenciaEnvios ON TelefonoAgenciaEnvios.Agencia_FK_Codigo = AgenciaEnvios.IdAgencia
GROUP BY AgenciaEnvios.Nombre;

SELECT AgenciaEnvios.Nombre, COUNT(*) AS Num_Telefonos,
MIN(PaisCodigo + Numero_Movil) AS Telefono_Principal,
MAX(PaisCodigo + Numero_Movil) AS Telefono_Secundario
FROM TelefonoAgenciaEnvios
INNER JOIN AgenciaEnvios ON TelefonoAgenciaEnvios.Agencia_FK_Codigo = AgenciaEnvios.IdAgencia
GROUP BY AgenciaEnvios.Nombre;


INSERT INTO TelefonoAgenciaEnvios (PaisCodigo, Numero_Movil, Agencia_FK_Codigo) VALUES ('+505', '22222222', 1);
INSERT INTO TelefonoAgenciaEnvios (PaisCodigo, Numero_Movil, Agencia_FK_Codigo) VALUES ('+505', '33333333', 2);
INSERT INTO TelefonoAgenciaEnvios (PaisCodigo, Numero_Movil, Agencia_FK_Codigo) VALUES ('+1', '5555555555', 3);
INSERT INTO TelefonoAgenciaEnvios (PaisCodigo, Numero_Movil, Agencia_FK_Codigo) VALUES ('+1', '4444444444', 4);
INSERT INTO TelefonoAgenciaEnvios (PaisCodigo, Numero_Movil, Agencia_FK_Codigo) VALUES ('+52', '1111111111', 5);
INSERT INTO TelefonoAgenciaEnvios (PaisCodigo, Numero_Movil, Agencia_FK_Codigo) VALUES ('+52', '3333333333', 6);
INSERT INTO TelefonoAgenciaEnvios (PaisCodigo, Numero_Movil, Agencia_FK_Codigo) VALUES ('+1', '7777777777', 7);
INSERT INTO TelefonoAgenciaEnvios (PaisCodigo, Numero_Movil, Agencia_FK_Codigo) VALUES ('+58', '9999999999', 8);
INSERT INTO TelefonoAgenciaEnvios (PaisCodigo, Numero_Movil, Agencia_FK_Codigo) VALUES ('+52', '7777777777', 9);
INSERT INTO TelefonoAgenciaEnvios (PaisCodigo, Numero_Movil, Agencia_FK_Codigo) VALUES ('+58', '6666666666', 10);
INSERT INTO TelefonoAgenciaEnvios (PaisCodigo, Numero_Movil, Agencia_FK_Codigo) VALUES ('+58', '3333333333', 11);

CREATE TABLE Factura_Productos
(
	NumeroFactura int primary key identity(0001,1) not null,
	TotalProductos int not null,
	Monto_Total float not null,
	Descuento float default (0) null,
	Fecha_Compra date not null,
	EsDomicilio BIT not null, --1 Envio, 0 En tienda
	Cliente_FK_Cedula nvarchar(30) not null,
	constraint Cliente_FK_Cedula foreign key (Cliente_FK_Cedula) references Cliente(Cedula)
)
--Siguiente factura
go
Create Procedure SiguienteFacturaId
as
begin
SELECT MAX(NumeroFactura) + 1 AS SiguienteFactura
FROM Factura_Productos;
end
--Factura actual
SELECT TOP 1 * FROM Factura_Productos ORDER BY NumeroFactura DESC

--saber que cliente esta en que factura
SELECT fp.NumeroFactura, c.Nombre, c.Cedula
FROM Factura_Productos fp
INNER JOIN Cliente c ON fp.Cliente_FK_Cedula = c.Cedula


--todas las facturas
select * from Factura_Productos

--SP TOTAL PROVEEDORES
go
Create Procedure SP_TotalProveedores
as
begin 
Select count(Proveedor.IdProveedor) as TotalProveedores from Proveedor
END
--SP TOTAL PRODUCTOS
go
Create Procedure SP_TotalProductos
as
begin 
Select count(IdProducto)as TotalProductos from Producto
END
--SP TOTAL CLIENTES
go
Create Procedure SP_TotalClientes
as
begin 
Select count(Cedula) as TotalClientes from Cliente
END

go
CREATE PROCEDURE InsertarFacturaProductos 
	@TotalProductos INT,
	@MontoTotal FLOAT,
	@NombreCliente nvarchar(30)
AS
BEGIN
DECLARE 	@ClienteCedula NVARCHAR(30)

		SELECT @ClienteCedula = Cedula
		FROM Cliente
		WHERE Nombre = @NombreCliente;

		IF @ClienteCedula IS NULL
		BEGIN
			-- Manejo del error, en caso de que el nombre del cliente no exista
			RAISERROR('No se encontró un cliente con ese nombre.', 16, 1);
			RETURN;
		END



	-- Insertar la nueva factura de productos
	INSERT INTO Factura_Productos (TotalProductos, Monto_Total, Fecha_Compra, EsDomicilio, Cliente_FK_Cedula)
	VALUES (@TotalProductos, @MontoTotal, GETDATE(), 0, @ClienteCedula);
	
	
END


GO
CREATE PROCEDURE InsertarFacturaProductoDetalle
@ProductoId int,
@CantidadProducto int,
@Subtotal Float,
@NumeroFactura int
as
begin
-- Actualizar el stock disponible del producto vendido
	UPDATE Producto
	SET StockActual = StockActual - @CantidadProducto
	WHERE IdProducto = @ProductoId;
	
	-- Insertar el detalle de la factura
	INSERT INTO Detalle_FacturaProducto (Cantidad_Producto_Vendida, SubTotal_Compra, Factura_FK_Numero, Producto_FK_ID)
	VALUES (@CantidadProducto, @Subtotal, @NumeroFactura, @ProductoId);
END

select * from Producto


INSERT INTO Factura_Productos (TotalProductos, Monto_Total, Fecha_Compra, EsDomicilio, Cliente_FK_Cedula)
VALUES (5, 3000.50, '2023-03-03', 0, '201-123456-789A');

INSERT INTO Factura_Productos (TotalProductos, Monto_Total, Fecha_Compra, EsDomicilio, Cliente_FK_Cedula)
VALUES (3, 750.25, '2023-03-02', 0, '201-567890-123N');

INSERT INTO Detalle_FacturaProducto (Cantidad_Producto_Vendida, SubTotal_Compra, Factura_FK_Numero, Producto_FK_ID)
VALUES (2, 45.5, 2, 2);

INSERT INTO Detalle_FacturaProducto (Cantidad_Producto_Vendida, SubTotal_Compra, Factura_FK_Numero, Producto_FK_ID)
VALUES (1, 15.75, 2, 5);

INSERT INTO Detalle_FacturaProducto (Cantidad_Producto_Vendida, SubTotal_Compra, Factura_FK_Numero, Producto_FK_ID)
VALUES (3, 14, 2, 7);

INSERT INTO Factura_Productos (TotalProductos, Monto_Total, Fecha_Compra, EsDomicilio, Cliente_FK_Cedula)
VALUES (10, 200.00, '2023-05-01', 0, '201-901234-567I');

INSERT INTO Factura_Productos (TotalProductos, Monto_Total, Fecha_Compra, EsDomicilio, Cliente_FK_Cedula)
VALUES (2, 50.00, '2023-04-30', 2, '201-789012-345J');

INSERT INTO Factura_Productos (TotalProductos, Monto_Total, Fecha_Compra, EsDomicilio, Cliente_FK_Cedula)
VALUES (8, 150.75, '2023-04-29', 1, '201-010121-789A');

INSERT INTO Factura_Productos (TotalProductos, Monto_Total, Fecha_Compra, EsDomicilio, Cliente_FK_Cedula)
VALUES (4, 100.00, '2023-04-28', 2, '201-345678-901J');

INSERT INTO Factura_Productos (TotalProductos, Monto_Total, Fecha_Compra, EsDomicilio, Cliente_FK_Cedula)
VALUES (6, 120.25, '2023-04-27', 1, '201-234567-890D');

INSERT INTO Factura_Productos (TotalProductos, Monto_Total, Fecha_Compra, EsDomicilio, Cliente_FK_Cedula)
VALUES (1, 25.50, '2023-04-26', 2, '201-345678-901F');

INSERT INTO Factura_Productos (TotalProductos, Monto_Total, Fecha_Compra, EsDomicilio, Cliente_FK_Cedula)
VALUES (9, 180.50, '2023-04-25', 1, '201-789012-345L');

INSERT INTO Factura_Productos (TotalProductos, Monto_Total, Fecha_Compra, EsDomicilio, Cliente_FK_Cedula)
VALUES (7, 140.00, '2023-04-24', 2, '201-987654-321B');

CREATE TABLE Detalle_FacturaProducto
(
	IdDetalleProducto int primary key identity(1,1) not null,
	Cantidad_Producto_Vendida int not null,
	SubTotal_Compra float not null,
	Factura_FK_Numero int not null,
	Producto_FK_ID int not null,
	constraint Pr_FK_Codigo foreign key (Producto_FK_ID) references Producto(IdProducto),
	constraint Fc_FK_Codigo foreign key (Factura_FK_Numero) references Factura_Productos(NumeroFactura)
)

SELECT fp.NumeroFactura, p.Nombre, dfp.Cantidad_Producto_Vendida, dfp.SubTotal_Compra
FROM Factura_Productos fp
INNER JOIN Detalle_FacturaProducto dfp ON fp.NumeroFactura = dfp.Factura_FK_Numero
INNER JOIN Producto p ON dfp.Producto_FK_ID = p.IdProducto;

CREATE PROCEDURE MostrarFactura
AS
BEGIN
    SELECT
        fp.NumeroFactura,
        fp.Fecha_Compra,
        c.Nombre AS NombreCliente,
        p.IdProducto,
        p.Nombre AS NombreProducto,
        df.Cantidad_Producto_Vendida,
        fp.TotalProductos,
        df.SubTotal_Compra,
        fp.Monto_Total
    FROM
        Factura_Productos fp
        JOIN Detalle_FacturaProducto df ON fp.NumeroFactura = df.Factura_FK_Numero
        JOIN Producto p ON df.Producto_FK_ID = p.IdProducto
        JOIN Cliente c ON fp.Cliente_FK_Cedula = c.Cedula
	WHERE 
		fp.NumeroFactura = (SELECT TOP 1 NumeroFactura FROM Factura_Productos ORDER BY NumeroFactura DESC)

END


SELECT Factura_FK_Numero, SUM(SubTotal_Compra) AS TotalVenta
FROM Detalle_FacturaProducto
GROUP BY Factura_FK_Numero;

INSERT INTO Detalle_FacturaProducto (Cantidad_Producto_Vendida, SubTotal_Compra, Factura_FK_Numero, Producto_FK_ID)
VALUES (2, 19.90, 1, 1);

INSERT INTO Detalle_FacturaProducto (Cantidad_Producto_Vendida, SubTotal_Compra, Factura_FK_Numero, Producto_FK_ID)
VALUES (1, 15.50, 1, 3);

INSERT INTO Detalle_FacturaProducto (Cantidad_Producto_Vendida, SubTotal_Compra, Factura_FK_Numero, Producto_FK_ID)
VALUES (1, 24.50, 1, 4);

INSERT INTO Detalle_FacturaProducto (Cantidad_Producto_Vendida, SubTotal_Compra, Factura_FK_Numero, Producto_FK_ID)
VALUES (1, 16.60, 1, 6);

INSERT INTO Detalle_FacturaProducto (Cantidad_Producto_Vendida, SubTotal_Compra, Factura_FK_Numero, Producto_FK_ID)
VALUES (1, 24.00, 1, 9);





Select * from Detalle_FacturaProducto

CREATE TABLE Envio_Domicilio 
(
	EnvioCodigo int primary key identity(1,1) not null,
	Precio_Envio float not null,
	Monto_Final float not null,
	Direccion_Envio text not null,
	Factura_FK_Codigo int not null,
	Estado BIT, --1 Enviado -- 0 Pendiente
	AgenciaEnvios_FK_Codigo int not null,
	constraint Fact_FK_Codigo foreign key (Factura_FK_Codigo) references Factura_Productos(NumeroFactura),
	constraint AgenciaEnvios_FK_Codigo foreign key (AgenciaEnvios_FK_Codigo) references AgenciaEnvios(IdAgencia)
)

SELECT
    Factura_Productos.NumeroFactura AS 'Id de la venta',
    Cliente.Nombre AS 'Nombre del cliente',
    Cliente.Cedula AS 'Cédula del cliente',
    Factura_Productos.Fecha_Compra AS 'Fecha de la compra',
    Producto.Nombre AS 'Nombre del producto',
    Detalle_FacturaProducto.Cantidad_Producto_Vendida AS 'Cantidad vendida',
    Detalle_FacturaProducto.SubTotal_Compra AS 'Subtotal por producto',
	(SELECT SUM(SubTotal_Compra) FROM Detalle_FacturaProducto WHERE Factura_FK_Numero = Factura_Productos.NumeroFactura) AS 'Monto total'
FROM
    Factura_Productos
    INNER JOIN Cliente ON Factura_Productos.Cliente_FK_Cedula = Cliente.Cedula
    INNER JOIN Detalle_FacturaProducto ON Factura_Productos.NumeroFactura = Detalle_FacturaProducto.Factura_FK_Numero
    INNER JOIN Producto ON Detalle_FacturaProducto.Producto_FK_ID = Producto.IdProducto
GROUP BY
    Factura_Productos.NumeroFactura,
    Cliente.Nombre,
    Cliente.Cedula,
    Factura_Productos.Fecha_Compra,
    Producto.Nombre,
    Detalle_FacturaProducto.Cantidad_Producto_Vendida,
    Detalle_FacturaProducto.SubTotal_Compra;
SELECT Producto.Nombre, Producto.Precio
FROM Detalle_FacturaProducto
INNER JOIN Producto ON Detalle_FacturaProducto.Producto_FK_ID = Producto.IdProducto
WHERE Detalle_FacturaProducto.Factura_FK_Numero = 2;

/*10 productos mas vendidos */
CREATE PROCEDURE MostrarProductosMasVendidos
AS
BEGIN
    SELECT TOP 10 
        P.Nombre AS 'Nombre Producto',
        SUM(D.Cantidad_Producto_Vendida) AS 'Cantidad Vendida'
    FROM Detalle_FacturaProducto D
    INNER JOIN Producto P ON D.Producto_FK_ID = P.IdProducto
    GROUP BY P.Nombre
    ORDER BY 'Cantidad Vendida' DESC;
END

go
CREATE PROCEDURE [dbo].[SP_IngresosBrutosPorMes]
AS
BEGIN
    SELECT DATEPART(MONTH, Fecha_Compra) AS Mes, SUM(Monto_Total) AS Ingresos
    FROM Factura_Productos
    GROUP BY DATEPART(MONTH, Fecha_Compra)
END

--procedimiento almacenado para productos con stock bajo
CREATE PROCEDURE [dbo].[SP_ProductosStockBajo]
AS
BEGIN
    SELECT IdProducto,Nombre, StockActual, Descripcion
    FROM Producto
    WHERE StockActual < 10
END

go
CREATE PROCEDURE ProveedorMasVendidos
AS
BEGIN
    SELECT TOP 10 
        P.Empresa, 
        SUM(D.Cantidad_Producto_Vendida) AS 'Total Productos Vendidos'
    FROM 
        Proveedor P 
        INNER JOIN Producto Pr ON P.IdProveedor = Pr.Proveedor_FK_Codigo
        INNER JOIN Detalle_FacturaProducto D ON Pr.IdProducto = D.Producto_FK_ID
        INNER JOIN Factura_Productos F ON D.Factura_FK_Numero = F.NumeroFactura
    WHERE 
        MONTH(F.Fecha_Compra) = MONTH(GETDATE())
        AND YEAR(F.Fecha_Compra) = YEAR(GETDATE())
    GROUP BY 
        P.IdProveedor, 
        P.Empresa
    ORDER BY 
        'Total Productos Vendidos' DESC
END

go
CREATE PROCEDURE [dbo].[SP_TotalVentasMesActual]
AS
BEGIN
    SELECT COUNT(*) AS 'TotalVentas'
    FROM Factura_Productos
    WHERE MONTH(Fecha_Compra) = MONTH(GETDATE()) AND YEAR(Fecha_Compra) = YEAR(GETDATE())
END


select NumeroFactura,Factura_Productos.Fecha_Compra from Factura_Productos



--Total de dinero entrante resultado de las ventas:
go
CREATE PROCEDURE [dbo].[SP_TotalDineroMesActual]
AS
BEGIN
    SELECT SUM(Monto_Total) AS 'Total Dinero'
    FROM Factura_Productos
    WHERE MONTH(Fecha_Compra) = MONTH(GETDATE()) AND YEAR(Fecha_Compra) = YEAR(GETDATE())
END
--Número de módulos activos:
go
CREATE PROCEDURE [dbo].[SP_NumModulosActivos]
AS
BEGIN
    SELECT COUNT(*) AS 'NumModulosActivos'
    FROM Modulo
    WHERE Estado = 1
END
--Cantidad de productos vendidos:
go
CREATE PROCEDURE [dbo].[SP_CantProductosVendidosMesActual]
AS
BEGIN
    SELECT SUM(Cantidad_Producto_Vendida) AS 'CantProductosVendidos'
    FROM Detalle_FacturaProducto inner join Factura_Productos on NumeroFactura = Factura_FK_Numero WHERE MONTH(Factura_Productos.Fecha_Compra) = MONTH(GETDATE()) AND YEAR(Fecha_Compra) = YEAR(GETDATE())

END

/*PROCEDIMIENTOS ALMACENADOS*/
--Procedimiento almacenado para insertar Cliente
GO
CREATE PROCEDURE [dbo].[InsertarCliente]
(
    @Cedula NVARCHAR(30),
    @Nombre NVARCHAR(30),
    @Apellido NVARCHAR(30),
    @Telefono NVARCHAR(16),
    @Direccion TEXT
)
AS
BEGIN
    INSERT INTO Cliente (Cedula, Nombre, Telefono, Direccion)
    VALUES (@Cedula, @Nombre, @Telefono, @Direccion)
END

--Procedimiento almacenado para actualizar Cliente
go
CREATE PROCEDURE [dbo].[ActualizarCliente]
(
    @Cedula NVARCHAR(30),
    @Nombre NVARCHAR(30),
    @Apellido NVARCHAR(30),
    @Telefono NVARCHAR(16),
    @Direccion TEXT
)
AS
BEGIN
    UPDATE Cliente  SET Nombre = @Nombre,  Apellido = @Apellido,
        Telefono = @Telefono, Direccion = @Direccion
    WHERE Cedula = @Cedula
END
--Procedimiento almacenado para eliminar Cliente

go
CREATE PROCEDURE [dbo].[EliminarCliente]
(
    @Cedula NVARCHAR(30)
)
AS
BEGIN
    DELETE FROM Cliente WHERE Cedula = @Cedula
END

--Procedimiento almacenado para insertar Proveedor
go
CREATE PROCEDURE [dbo].[InsertarProveedor]
(
    @CodigoProveedor NVARCHAR(20),
    @Empresa NVARCHAR(30),
    @Direccion TEXT,
    @Estado BIT
)
AS
BEGIN
    INSERT INTO Proveedor (CodigoProveedor, Empresa, Direccion, Estado)
    VALUES (@CodigoProveedor, @Empresa, @Direccion, @Estado)
END
--Procedimiento almacenado para actualizar Proveedor
go
CREATE PROCEDURE [dbo].[ActualizarProveedor]
(
    @IdProveedor INT,
    @CodigoProveedor NVARCHAR(20),
    @Empresa NVARCHAR(30),
    @Direccion TEXT,
    @Estado BIT
)
AS
BEGIN
    UPDATE Proveedor
    SET CodigoProveedor = @CodigoProveedor,
        Empresa = @Empresa,
        Direccion = @Direccion,
        Estado = @Estado
    WHERE IdProveedor = @IdProveedor
END

--Procedimiento almacenado para eliminar Proveedor
go
CREATE PROCEDURE [dbo].[EliminarProveedor]
(
    @IdProveedor INT
)
AS
BEGIN
    UPDATE Proveedor
    SET Estado = 0
    WHERE IdProveedor = @IdProveedor
END

--Procedimiento almacenado para insertar TelefonoProovedor
go
CREATE PROCEDURE [dbo].[InsertarTelefonoProveedor]
(
    @PaisCodigo NVARCHAR(4),
    @NumeroMovil NVARCHAR(8),
    @ProveedorCodigo INT
)
AS
BEGIN
    INSERT INTO TelefonoProveedor (PaisCodigo, Numero_Movil, Proveedor_FK_Codigo)
    VALUES (@PaisCodigo, @NumeroMovil, @ProveedorCodigo)
END

--Procedimiento almacenado para actualizar TelefonoProovedor
go
CREATE PROCEDURE [dbo].[ActualizarTelefonoProveedor]
(
    @TelefonoProveedorCodigo INT,
    @PaisCodigo NVARCHAR(4),
    @NumeroMovil NVARCHAR(8),
    @ProveedorCodigo INT
)
AS
BEGIN
    UPDATE TelefonoProveedor
    SET PaisCodigo = @PaisCodigo,
        Numero_Movil = @NumeroMovil,
        Proveedor_FK_Codigo = @ProveedorCodigo
    WHERE TelefonoProveedorCodigo = @TelefonoProveedorCodigo
END

--Procedimiento almacenado para eliminar TelefonoProovedor
go
CREATE PROCEDURE [dbo].[EliminarTelefonoProveedor]
(
    @TelefonoProveedorCodigo INT
)
AS
BEGIN
    DELETE FROM TelefonoProveedor
    WHERE TelefonoProveedorCodigo = @TelefonoProveedorCodigo
END


--Procedimiento almacenado para insertar Modulo
go
CREATE PROCEDURE [dbo].[InsertarModulo]
(
    @CapacidadModulo NUMERIC(3),
    @StockModulo NUMERIC(3),
    @Precio FLOAT,
    @Estado BIT
)
AS
BEGIN
    INSERT INTO Modulo (CapacidadModulo, StockModulo, Precio, Estado)
    VALUES (@CapacidadModulo, @StockModulo, @Precio, @Estado)
END

--Procedimiento almacenado para actualizar Modulo
go
CREATE PROCEDURE [dbo].[ActualizarModulo]
(
    @IdModulo INT,
    @CapacidadModulo NUMERIC(3),
    @StockModulo NUMERIC(3),
    @Precio FLOAT,
    @Estado BIT
)
AS
BEGIN
    UPDATE Modulo  SET CapacidadModulo = @CapacidadModulo,
        StockModulo = @StockModulo, Precio = @Precio, Estado = @Estado
    WHERE IdModulo = @IdModulo
END



--Procedimiento almacenado para eliminar modulo
go
CREATE PROCEDURE EliminarModulo
(
    @IdModulo INT
)
AS
BEGIN
    UPDATE Modulo  SET Estado = 0
    WHERE IdModulo = @IdModulo
END

--Procedimiento almacenado para insertar una Factura_Alquiler
go
CREATE PROCEDURE InsertarFacturaAlquiler
(
    @FechaCancelacion DATE,
    @FechaExpiracion DATE,
    @Mora FLOAT,
    @MontoTotal FLOAT,
    @ProveedorCodigo INT,
    @ModuloCodigo INT
)
AS
BEGIN
    INSERT INTO Factura_Alquiler (FechaCancelacion, FechaExpiracion, Mora, MontoTotal, Proveedor_FK_Codigo, Modulo_FK_Codigo)
    VALUES (@FechaCancelacion, @FechaExpiracion, @Mora, @MontoTotal, @ProveedorCodigo, @ModuloCodigo)
END






--Procedimiento almacenado para actualizar Factura_Alquiler
go
CREATE PROCEDURE ActualizarFacturaAlquiler
(
    @CodigoFacturaAlquiler INT,
    @FechaCancelacion DATE,
    @FechaExpiracion DATE,
    @Mora FLOAT,
    @MontoTotal FLOAT,
    @ProveedorCodigo INT,
    @ModuloCodigo INT
)
AS
BEGIN
    UPDATE Factura_Alquiler SET FechaCancelacion = @FechaCancelacion,
        FechaExpiracion = @FechaExpiracion,
        Mora = @Mora,
        MontoTotal = @MontoTotal,
        Proveedor_FK_Codigo = @ProveedorCodigo,
        Modulo_FK_Codigo = @ModuloCodigo
    WHERE CodigoFacturaAlquiler = @CodigoFacturaAlquiler
END


--Procedimiento almacenado para eliminar Factura_Alquiler
go
CREATE PROCEDURE EliminarFacturaAlquiler
(
    @CodigoFacturaAlquiler INT
)
AS
BEGIN
    DELETE FROM Factura_Alquiler
    WHERE CodigoFacturaAlquiler = @CodigoFacturaAlquiler
END



--Procedimiento almacenado para insertar CategotiaProducto
go
CREATE PROCEDURE InsertarCategoriaProducto
(
    @Nombre NVARCHAR(20),
    @Estado BIT
)
AS
BEGIN
    INSERT INTO CategoriaProducto (Nombre, Estado)
    VALUES (@Nombre, @Estado)
END

--Procedimiento almacenado para actualizar CategoriaProducto
go
CREATE PROCEDURE ActualizarCategoriaProducto
(
    @IdCategoria INT,
    @Nombre NVARCHAR(20),
    @Estado BIT
)
AS
BEGIN
    UPDATE CategoriaProducto
    SET Nombre = @Nombre, Estado = @Estado
    WHERE IdCategoria = @IdCategoria
END

--Procedimiento almacenado para eliminar CategoriaProducto
go
CREATE PROCEDURE EliminarCategoriaProducto
    @IdCategoria INT
AS
BEGIN
    UPDATE CategoriaProducto SET Estado = 0
    WHERE IdCategoria = @IdCategoria
END

--Procedimiento almacenado para insertar Producto
go
CREATE PROCEDURE InsertarProducto
    @Nombre NVARCHAR(20),
    @StockActual INT,
    @Precio FLOAT,
    @Descripcion TEXT,
    @Proveedor_FK_Codigo INT,
    @Categoria_FK_Codigo INT
AS
BEGIN
    INSERT INTO Producto (Nombre, StockActual, Precio, Descripcion, Proveedor_FK_Codigo, Categoria_FK_Codigo)
    VALUES (@Nombre, @StockActual, @Precio, @Descripcion, @Proveedor_FK_Codigo, @Categoria_FK_Codigo)
END

--Procedimiento almacenado para actualizar Producto
go
CREATE PROCEDURE ActualizarProducto
    @IdProducto INT,
    @Nombre NVARCHAR(20),
    @StockActual INT,
    @Precio FLOAT,
    @Descripcion TEXT,
    @Proveedor_FK_Codigo INT,
    @Categoria_FK_Codigo INT
AS
BEGIN
    UPDATE Producto SET Nombre = @Nombre, StockActual = @StockActual,
        Precio = @Precio, Descripcion = @Descripcion,
        Proveedor_FK_Codigo = @Proveedor_FK_Codigo,
        Categoria_FK_Codigo = @Categoria_FK_Codigo
    WHERE IdProducto = @IdProducto
END

--Procedimiento almacenado para eliminar Producto
go
CREATE PROCEDURE EliminarProducto
(
    @IdProducto INT
)
AS
BEGIN
    DELETE FROM Producto
    WHERE IdProducto = @IdProducto
END

--Procedimiento almacenado para insertar RegistroProducto
go
CREATE PROCEDURE InsertarRegistroProducto
(
    @CantidadSuministrada INT,
    @Producto_FK_Codigo INT
)
AS
BEGIN
    INSERT INTO RegistroProducto (CantidadSuministrada, Producto_FK_Coidgo)
    VALUES (@CantidadSuministrada, @Producto_FK_Codigo)
END

--Procedimiento almacenado para actualizar RegistroProducto
go
CREATE PROCEDURE ActualizarRegistroProducto
    @IdRegistro INT,
    @CantidadSuministrada INT,
    @Producto_FK_Codigo INT
AS
BEGIN
    UPDATE RegistroProducto SET CantidadSuministrada = @CantidadSuministrada,
        Producto_FK_Coidgo = @Producto_FK_Codigo
    WHERE IdRegistro = @IdRegistro
END

--Procedimiento almacenado para eliminar RegistroProducto
go
CREATE PROCEDURE EliminarRegistroProducto
    @IdRegistro INT
AS
BEGIN
    DELETE FROM RegistroProducto
    WHERE IdRegistro = @IdRegistro
END

--Procedimiento almacenado para insertar Modulo_Producto
go
CREATE PROCEDURE InsertarModuloProducto
    @CantidadProductos INT,
    @Producto_FK_Codigo INT,
    @Modulo_FK_Codigo INT
AS
BEGIN
    INSERT INTO Modulo_Producto (CantidadProductos, Producto_FK_Codigo, Modulo_FK_Codigo)
    VALUES (@CantidadProductos, @Producto_FK_Codigo, @Modulo_FK_Codigo)
END

--Procedimiento almacenado para actualizar Modulo_Producto
go
CREATE PROCEDURE ActualizarModuloProducto
    @IdModuloProducto INT,
    @CantidadProductos INT,
    @Producto_FK_Codigo INT,
    @Modulo_FK_Codigo INT
AS
BEGIN
    UPDATE Modulo_Producto SET CantidadProductos = @CantidadProductos,
        Producto_FK_Codigo = @Producto_FK_Codigo,
        Modulo_FK_Codigo = @Modulo_FK_Codigo
    WHERE IdModuloProducto = @IdModuloProducto
END

--Procedimiento almacenado para eliminar Modulo_Producto
go
CREATE PROCEDURE EliminarModuloProducto
    @IdModuloProducto INT
AS
BEGIN
    DELETE FROM Modulo_Producto
    WHERE IdModuloProducto = @IdModuloProducto
END

--Procedimiento almacenado para insertar AgenciaEnvios
go
CREATE PROCEDURE sp_InsertAgenciaEnvios
    @CodigoAgencia NVARCHAR(20),
    @Nombre NVARCHAR(15)
AS
BEGIN
    INSERT INTO AgenciaEnvios(CodigoAgencia, Nombre, Estado)
    VALUES (@CodigoAgencia, @Nombre, 1)
END
GO

--Procedimiento almacenado para actualizar AgenciaEnvios
go
CREATE PROCEDURE sp_UpdateAgenciaEnvios
    @IdAgencia INT,
    @CodigoAgencia NVARCHAR(20),
    @Nombre NVARCHAR(15),
    @Estado BIT
AS
BEGIN
    UPDATE AgenciaEnvios
    SET CodigoAgencia = @CodigoAgencia, Nombre = @Nombre, Estado = @Estado
    WHERE IdAgencia = @IdAgencia
END
GO

--Procedimiento almacenado para eliminar AgenciaEnvios
go
CREATE PROCEDURE sp_DeleteAgenciaEnvios
    @IdAgencia INT
AS
BEGIN
   UPDATE AgenciaEnvios SET Estado = 0
    WHERE IdAgencia = @IdAgencia
END
GO

--Procedimiento almacenado para Insertar TelefonoAgenciaEnvios
go
CREATE PROCEDURE InsertarTelefonoAgenciaEnvios
    @PaisCodigo NVARCHAR(4),
    @Numero_Movil NVARCHAR(8),
    @Agencia_FK_Codigo INT
AS
BEGIN
    INSERT INTO TelefonoAgenciaEnvios (PaisCodigo, Numero_Movil, Agencia_FK_Codigo)
    VALUES (@PaisCodigo, @Numero_Movil, @Agencia_FK_Codigo)
END

--Procedimiento almacenado para acgtualizar TelefonoAgenciaEnvios
go
CREATE PROCEDURE ActualizarTelefonoAgenciaEnvios
    @TelefonoAgenciaCodigo INT,
    @PaisCodigo NVARCHAR(4),
    @Numero_Movil NVARCHAR(8),
    @Agencia_FK_Codigo INT
AS
BEGIN
    UPDATE TelefonoAgenciaEnvios SET PaisCodigo = @PaisCodigo, Numero_Movil = @Numero_Movil, Agencia_FK_Codigo = @Agencia_FK_Codigo
    WHERE TelefonoAgenciaCodigo = @TelefonoAgenciaCodigo
END

--Procedimiento almacenado para eliminar TelefonoAgenciaEnvios
go
CREATE PROCEDURE EliminarTelefonoAgenciaEnvios
    @TelefonoAgenciaCodigo INT
AS
BEGIN
    DELETE FROM TelefonoAgenciaEnvios
    WHERE TelefonoAgenciaCodigo = @TelefonoAgenciaCodigo
END

--Procedimiento almacenado para Insertar Factura_Prod-ucto
go
CREATE PROCEDURE [dbo].[SP_Agregar_Factura]
	@TOTALPRODUCTOS INT,
	@MONTOTOTAL INT,
	@DESCUENTO FLOAT,
	@DOMICILIO BIT,
	@CEDULA_CLIENTE NVARCHAR(30)
AS
BEGIN
	INSERT INTO Factura_Productos ( TotalProductos, Monto_Total, Descuento, Fecha_Compra, EsDomicilio, Cliente_FK_Cedula )
	VALUES ( @TOTALPRODUCTOS, @MONTOTOTAL, @DESCUENTO, GETDATE(), @DOMICILIO, @CEDULA_CLIENTE )
END

--Procedimiento almacenado para actualizar Factura_Producto
go
CREATE PROCEDURE ActualizarFacturaProductos
    @NumeroFactura int,
    @TotalProductos int,
    @Monto_Total float,
    @Descuento float = 0,
    @Fecha_Compra date,
    @EsDomicilio bit,
    @Cliente_FK_Cedula nvarchar
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE Factura_Productos SET TotalProductos = @TotalProductos,
        Monto_Total = @Monto_Total, Descuento = @Descuento,
        Fecha_Compra = @Fecha_Compra, EsDomicilio = @EsDomicilio,
        Cliente_FK_Cedula = @Cliente_FK_Cedula
    WHERE NumeroFactura = @NumeroFactura;
END;

--Procedimiento almacenado para eliminar Factura_Producto
go
CREATE PROCEDURE EliminarFacturaProductos
    @NumeroFactura int
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Factura_Productos
    WHERE NumeroFactura = @NumeroFactura;
END;

--Procedimiento almacenado para insertar Detalle_FacturaProducto
go
CREATE PROCEDURE [dbo].[SP_Agregar_DetalleFactura]
	@TOTALPRODUCTOS INT,
	@SUBPRECIO FLOAT,
	@NUMFACTURA INT,
	@IDPRODUCTO INT
AS
BEGIN
	INSERT INTO Detalle_FacturaProducto ( Cantidad_Producto_Vendida, SubTotal_Compra, Factura_FK_Numero, Producto_FK_ID )
	VALUES (@TOTALPRODUCTOS, @SUBPRECIO, @NUMFACTURA, @IDPRODUCTO )
END

--Procedimiento almacenado para actualizar Detalle_FacturaProducto
go
CREATE PROCEDURE sp_ActualizarDetalleFacturaProducto
    @IdDetalleProducto int,
    @Cantidad_Producto_Vendida int,
    @Subprecio_Compra float,
    @Factura_FK_Numero int,
    @Producto_FK_ID int
AS
BEGIN
    UPDATE Detalle_FacturaProducto
    SET 
        Cantidad_Producto_Vendida = @Cantidad_Producto_Vendida,
        SubTotal_Compra = @Subprecio_Compra,
        Factura_FK_Numero = @Factura_FK_Numero,
        Producto_FK_ID = @Producto_FK_ID
    WHERE IdDetalleProducto = @IdDetalleProducto
END

--Procedimiento almacenado para Eliminar Detalle_FacturaProducto
go
CREATE PROCEDURE sp_EliminarDetalleFacturaProducto
(
    @IdDetalleProducto int
)
AS
BEGIN
    DELETE FROM Detalle_FacturaProducto WHERE IdDetalleProducto = @IdDetalleProducto
END

--Procedimiento almacenado para insertar Envio_Domicilio
go
CREATE PROCEDURE InsertarEnvioDomicilio
	@Precio_Envio float,
	@Monto_Final float,
	@Direccion_Envio text,
	@Factura_FK_Codigo int,
	@Estado bit,
	@AgenciaE_FK_Codigo int
AS
BEGIN
	INSERT INTO Envio_Domicilio (Precio_Envio, Monto_Final, Direccion_Envio, Factura_FK_Codigo, Estado, AgenciaEnvios_FK_Codigo)
	VALUES (@Precio_Envio, @Monto_Final, @Direccion_Envio, @Factura_FK_Codigo, @Estado, @AgenciaE_FK_Codigo)
END

--Procedimiento almacenado para actualizar Envio_Domicilio
go
CREATE PROCEDURE ActualizarEnvioDomicilio
	@EnvioCodigo int,
	@Precio_Envio float,
	@Monto_Final float,
	@Direccion_Envio text,
	@Factura_FK_Codigo int,
	@Estado bit,
	@AgenciaE_FK_Codigo int
AS
BEGIN
	UPDATE Envio_Domicilio SET Precio_Envio = @Precio_Envio,
		Monto_Final = @Monto_Final, Direccion_Envio = @Direccion_Envio,
		Factura_FK_Codigo = @Factura_FK_Codigo, Estado = @Estado,
		AgenciaEnvios_FK_Codigo = @AgenciaE_FK_Codigo
	WHERE EnvioCodigo = @EnvioCodigo
END

--Procedimiento almacenado para eliminar Envio_Domicilio
go
CREATE PROCEDURE EliminarEnvioDomicilio
	@EnvioCodigo int
AS
BEGIN
	DELETE FROM Envio_Domicilio
	WHERE EnvioCodigo = @EnvioCodigo
END

go

CREATE View [dbo].[Get_ClientePedidoAdomicilio]
as
SELECT  F.NumeroFactura, C.Nombre AS Cliente, C.Cedula, 	C.Direccion, C.Telefono, E.Monto_Final
FROM  dbo.Cliente AS C INNER JOIN
           	dbo.Factura_Productos AS F ON C.Cedula = F.Cliente_FK_Cedula 
INNER JOIN	dbo.Envio_Domicilio AS E ON F.NumeroFactura = E.Factura_FK_Codigo
WHERE  (F.EsDomicilio = 1) AND (E.Estado = 1)

go

--Vista para ver todos los proveedores activos
go
CREATE View [dbo].[Get_Proveedores]
as
SELECT        CodigoProveedor, Empresa, Direccion
FROM            dbo.Proveedor AS P
WHERE        (Estado = 1)

go

--Vista para ver todas las categorias de los productos activas
go
CREATE View [dbo].[Get_Categoria]
as
SELECT        IdCategoria, Nombre
FROM            dbo.CategoriaProducto AS C
WHERE        (Estado = 1)

--Vista para ver todos los productos de un proveedor activo
go
CREATE View [dbo].[Get_Product]
as
SELECT        Product.Nombre, Product.StockActual, Product.Precio, Product.Descripcion, Proveedor.Empresa
FROM            dbo.Producto AS Product INNER JOIN
                         dbo.Proveedor AS Proveedor ON Product.Proveedor_FK_Codigo = Proveedor.CodigoProveedor
WHERE        (Proveedor.Estado = 1) AND (Product.Estado = 1)

--función con las categoria de los productos de un proveedor
go
CREATE function [dbo].[Get_CategoriaXProveedor]
(@id Int
)
returns table
as--
return
(
	select *
	from (select * from CategoriaProducto AS C
			where C.IdCategoria in 
			(
				select P.Categoria_FK_Codigo from Producto P 
				where P.Proveedor_FK_Codigo = @id
			)
	) as TablaDerivada
)
go


--Función para ver todos los productos de un proveedor

CREATE Function [dbo].[Get_ProductosXProveedor]
(@CodigoProveedor nvarchar(30))
returns table
as
return
	select P.Nombre,P.Descripcion,P.Precio,P.StockActual,
			(
				select C.Nombre from CategoriaProducto C
				where P.Categoria_FK_Codigo = C.IdCategoria
			) AS 'Categoria'
		from Producto P
			where P.Proveedor_FK_Codigo =
			(
				select Pro.IdProveedor from Proveedor Pro
				where Pro.CodigoProveedor = @CodigoProveedor
			) 





/*fernando vistas*/
-- View Obtener la cantidad de productos y el nombre del módulo al que están asignados
Create view ProductosXModulos
as
SELECT CantidadProductos, m.IdModulo as Modulo, p.Nombre as Producto
FROM Modulo_Producto mp
JOIN Modulo m ON mp.Modulo_FK_Codigo = m.IdModulo
JOIN Producto p ON mp.Producto_FK_Codigo = p.IdProducto

--Obtener la cantidad de productos asignados a cada módulo:
create View Get_CantidadProductosPorModulo
as
SELECT Modulo_FK_Codigo, SUM(CantidadProductos) as TotalProductos
FROM Modulo_Producto
GROUP BY Modulo_FK_Codigo

--Obtener el nombre del producto y la cantidad de productos asignados a cada módulo:
Create View Get_nombreProducto_CantidadProductoPorModulo
as
SELECT p.Nombre as Producto, mp.CantidadProductos, m.IdModulo as Modulo
FROM Modulo_Producto mp
JOIN Modulo m ON mp.Modulo_FK_Codigo = m.IdModulo
JOIN Producto p ON mp.Producto_FK_Codigo = p.IdProducto

--Obtener la cantidad total de productos asignados a todos los módulos:

create view get_CantidadTotalProductosPorModulo
as
SELECT SUM(CantidadProductos) as TotalProductos
FROM Modulo_Producto


--A que modulo le corresponde cada proveedor
Create View ModulosXProveedor
as
SELECT P.Empresa AS NombreProveedor, M.IdModulo AS NumeroModulo
FROM ProveedorModulo PM
JOIN Proveedor P ON PM.ProveedorId = P.IdProveedor
JOIN Modulo M ON PM.ModuloId = M.IdModulo

--cuantos modulos tiene cada proveedor
Create View Get_CantModulosXProveedor
as
SELECT P.IdProveedor, P.Empresa, COUNT(*) AS TotalModulos
FROM Proveedor P
JOIN ProveedorModulo PM ON P.IdProveedor = PM.ProveedorId
GROUP BY P.IdProveedor, P.Empresa

--Seleccionar todos los teléfonos de los proveedores con su respectivo código de proveedor y país:
Create View Get_TelProveedor_Codigo_Pais
as
SELECT TelefonoProveedorCodigo, PaisCodigo + ' ' + Numero_Movil AS Numero_Telefono, Proveedor_FK_Codigo FROM TelefonoProveedor

--Seleccionar los teléfonos de los proveedores que están registrados en un país específico:
Create View Get_TelProveedorXPais
as
SELECT TelefonoProveedorCodigo, PaisCodigo + ' ' + Numero_Movil AS Numero_Telefono, Proveedor_FK_Codigo FROM TelefonoProveedor
WHERE PaisCodigo = '+505'

--Seleccionar el proveedor y su número de teléfono principal (el primero que se registró):
Create View Get_Proveedor_TelProveedor
as
SELECT P.IdProveedor, P.Empresa, TP.PaisCodigo + ' ' + TP.Numero_Movil AS Numero_Telefono FROM Proveedor P INNER JOIN TelefonoProveedor TP ON P.IdProveedor = TP.Proveedor_FK_Codigo WHERE TP.TelefonoProveedorCodigo = (SELECT MIN(TelefonoProveedorCodigo) FROM TelefonoProveedor WHERE Proveedor_FK_Codigo = P.IdProveedor)

--Seleccionar los proveedores que no tienen número de teléfono registrado:
Create View Get_Proveedores_SinNumero
as
SELECT P.IdProveedor, P.Empresa
FROM Proveedor P
LEFT JOIN TelefonoProveedor TP ON P.IdProveedor = TP.Proveedor_FK_Codigo
WHERE TP.TelefonoProveedorCodigo IS NULL

-- Este SELECT muestra únicamente los campos Empresa y CodigoProveedor de la tabla Proveedor, para aquellos proveedores cuyo Estado es igual a 1.
Create View Get_Empresa_CodigoProveedor
as
SELECT Empresa, CodigoProveedor FROM Proveedor WHERE Estado = 1;

-- Este SELECT muestra los campos IdProveedor, Empresa y Direccion de la tabla Proveedor, para aquellos proveedores cuyo CodigoProveedor contiene la cadena de caracteres 'ABC'.
Create View Get_Proveedor_Empresa_Direccion_SiCodigoProveedor_Tiene_ABC
as
SELECT IdProveedor, Empresa, Direccion FROM Proveedor WHERE CodigoProveedor LIKE '%ABC%';

-- Este SELECT muestra la cantidad de proveedores activos (Estado = 1) en la tabla Proveedor.
Create View Get_Cant_Proveedor_Activos
as
SELECT COUNT(*) AS Cantidad_Proveedores_Activos FROM Proveedor WHERE Estado = 1;

--Seleccionar todos los módulos con su información completa:
Create View Get_Modulos_InfoCompleta
as
SELECT IdModulo, CapacidadModulo, StockModulo, Precio, Estado FROM Modulo

--Seleccionar los módulos que tienen un stock menor a cierta cantidad:
Create View Get_Modulos_Con_StockMenorA10
as
SELECT IdModulo, CapacidadModulo, StockModulo, Precio, Estado FROM Modulo WHERE StockModulo < 10

--Seleccionar el precio promedio de los módulos:
Create View Get_Precio_PromedioXModulo
as
SELECT AVG(Precio) AS Precio_Promedio FROM Modulo

--Seleccionar el precio promedio de los módulos:
Create View Get_Precio_PromedioXModulo
as
SELECT AVG(Precio) AS Precio_Promedio FROM Modulo

--Seleccionar el IdAgencia y el Nombre de las agencias de envío activas (Estado = 1):
Create View Get_Agencia_activas
as
SELECT IdAgencia, Nombre FROM AgenciaEnvios WHERE Estado = 1

--Seleccionar la cantidad de agencias de envío registradas en la tabla:
Create View Cant_AgenciaEnvios
as
SELECT COUNT(*) AS CantidadAgencias FROM AgenciaEnvios