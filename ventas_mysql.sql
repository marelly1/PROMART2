create database ventas;
use ventas;
CREATE TABLE usuario(
	id_usuario INT PRIMARY KEY NOT NULL,
	usuario NVARCHAR(20) NOT NULL,
	contraseña INT NOT NULL
);

CREATE TABLE colaborador(
	id_colaborador INT PRIMARY KEY NOT NULL,
	dni INT NOT NULL,
	nombres VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	cargo VARCHAR(50) NOT NULL
);

CREATE TABLE area(
	id_area INT PRIMARY KEY NOT NULL ,
	area VARCHAR(50) NOT NULL
);
CREATE TABLE producto(
	id_producto INT PRIMARY KEY NOT NULL ,
	sku INT NOT NULL,
	producto VARCHAR(50) NOT NULL,
	precio_venta FLOAT NOT NULL,
	AREA INT NOT NULL
);
CREATE TABLE registro_producto(
	id_reg_producto INT PRIMARY KEY NOT NULL,
	sku INT NOT NULL,
	usuario NVARCHAR(50) NOT NULL,
	fecha_registro date NOT NULL
);

INSERT INTO area VALUES
(1,'Iluminación'),
(2,'Muebles'),
(3,'Electro Hogar'),
(4,'Baños'),
(5,'Organización y Decoración');

INSERT INTO colaborador VALUES
(1,12345678,	'Juan','Perez',	'Analista desarrollador de master data'),
(2,98765432,	'Alberto',	'Del Rio',	'Analista técnico de master data');

INSERT INTO producto VALUES
(1,3456712,	'Lámpara Orange',	15,	1),
(2,7865324,	'Velador Jacaranda',	90,	2),
(3,8625378,	'Olla Arrocera',	120,	3),
(4,6774633,	'One piece',	80,	4),
(5,7663737,	'Toldo azul',	50,	5),
(6,3456712,	'Foco wifi',	40,	1),
(7,7865324,	'Zapatera Jacaranda',	90,	2),
(8,8625378,	'Plancha imaco',	100,	3),
(9,6774633,	'Lavatorio beige'	,80,	4),
(10,7663737,	'Toldo rojo',	50,	5),
(11,8625378,	'Licuadora negra',	100,	3);

INSERT INTO registro_producto VALUES
(1,	3456712,	'analista_dm1',	'2021-10-01'),
(2,	7865324,	'analista_dm1',	'2021-10-01'),
(3,	8625378,	'analista_dm2', '2021-10-01'),
(4,	6774633,	'analista_dm2',	'2021-10-01'),
(5,	7663737,	'analista_dm1',	'2021-10-01'),
(6,	3456712,	'analista_dm1',	'2021-10-01'),
(7,	7865324,	'analista_dm2',	'2021-10-02'),
(8,	8625378,	'analista_dm2',	'2021-10-02'),
(9,	6774633,	'analista_dm1',	'2021-10-02'),
(10,	7663737,	'analista_dm2',	'2021-10-02'),
(11,	8625378,	'analista_dm1',	'2021-10-05'),
(12,	7663737,	'analista_dm2',	'2021-10-03'),
(13,	3456712,	'analista_dm2',	'2021-10-04'),
(14,	7865324,	'analista_dm2',	'2021-10-04'),
(15,	8625378,	'analista_dm1',	'2021-10-03');

INSERT INTO usuario VALUES
(1,'analista_dm1',	123456),
(2,'analista_dm2',	123456);

SELECT * FROM usuario;

