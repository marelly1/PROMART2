--CREATE DATABASE DB_Ventas

USE DB_Ventas

CREATE TABLE usuario(
	id_usuario INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	usuario NVARCHAR(20) NOT NULL,
	contraseña INT NOT NULL
)

CREATE TABLE colaborador(
	id_colaborador INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	dni INT NOT NULL,
	nombres VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	cargo VARCHAR(50) NOT NULL
)

CREATE TABLE area(
	id_area INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	area VARCHAR(50) NOT NULL
)
CREATE TABLE producto(
	id_producto INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	sku INT NOT NULL,
	producto VARCHAR(50) NOT NULL,
	precio_venta FLOAT NOT NULL,
	AREA INT NOT NULL
)
CREATE TABLE registro_producto(
	id_reg_producto INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	sku INT NOT NULL,
	usuario NVARCHAR(50) NOT NULL,
	fecha_registro date NOT NULL
	)



INSERT INTO [dbo].[area] VALUES
('Iluminación'),
('Muebles'),
('Electro Hogar'),
('Baños'),
('Organización y Decoración')

INSERT INTO [dbo].[colaborador] VALUES
(12345678,	'Juan','Perez',	'Analista desarrollador de master data'),
(98765432,	'Alberto',	'Del Rio',	'Analista técnico de master data')

INSERT INTO [dbo].[producto] VALUES
(3456712,	'Lámpara Orange',	15,	1),
(7865324,	'Velador Jacaranda',	90,	2),
(8625378,	'Olla Arrocera',	120,	3),
(6774633,	'One piece',	80,	4),
(7663737,	'Toldo azul',	50,	5),
(3456712,	'Foco wifi',	40,	1),
(7865324,	'Zapatera Jacaranda',	90,	2),
(8625378,	'Plancha imaco',	100,	3),
(6774633,	'Lavatorio beige'	,80,	4),
(7663737,	'Toldo rojo',	50,	5),
(8625378,	'Licuadora negra',	100,	3)

INSERT INTO [dbo].[registro_producto] VALUES
(	3456712,	'analista_dm1',	'2021-10-01'),
(	7865324,	'analista_dm1',	'2021-10-01'),
(	8625378,	'analista_dm2', '2021-10-01'),
(	6774633,	'analista_dm2',	'2021-10-01'),
(	7663737,	'analista_dm1',	'2021-10-01'),
(	3456712,	'analista_dm1',	'2021-10-01'),
(	7865324,	'analista_dm2',	'2021-10-02'),
(	8625378,	'analista_dm2',	'2021-10-02'),
(	6774633,	'analista_dm1',	'2021-10-02'),
(	7663737,	'analista_dm2',	'2021-10-02'),
(	8625378,	'analista_dm1',	'2021-10-05'),
(	7663737,	'analista_dm2',	'2021-10-03'),
(	3456712,	'analista_dm2',	'2021-10-04'),
(	7865324,	'analista_dm2',	'2021-10-04'),
(	8625378,	'analista_dm1',	'2021-10-03')

INSERT INTO [dbo].[usuario] VALUES
('analista_dm1',	123456),
('analista_dm2',	123456)



