/*************************
Creacion Base de Datos
*************************/
CREATE SCHEMA IF NOT EXISTS lubricentroV1;
USE LubricentroV1;

/*************************
Creacion de Tablas
*************************/

-- Table: cliente
CREATE TABLE cliente (
	id_cliente INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre_apellido VARCHAR (200) NOT NULL,
    telefono INT UNSIGNED NOT NULL,
	dni INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_cliente)
);	


-- Table: auto
CREATE TABLE auto(
	id_auto INT UNSIGNED NOT NULL AUTO_INCREMENT,
    marca VARCHAR (200) NOT NULL,
    modelo VARCHAR (200) NOT NULL,
    kms INT UNSIGNED NOT NULL,
    id_cliente INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_auto),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);	

-- Table: trabajo
CREATE TABLE trabajo (
	id_trabajo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    num_empleado INT UNSIGNED NOT NULL,
    id_auto INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_trabajo),
    FOREIGN KEY (id_auto) REFERENCES auto(id_auto)
);	

-- Table: producto
CREATE TABLE producto (
	id_producto INT UNSIGNED NOT NULL AUTO_INCREMENT,
    litros INT UNSIGNED NOT NULL,
    marca VARCHAR (100) NOT NULL,
    id_trabajo INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_producto),
    FOREIGN KEY (id_trabajo) REFERENCES trabajo(id_trabajo)
    );	

-- Table: chequeo
CREATE TABLE chequeo (
	id_chequeo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    revisado BOOLEAN NOT NULL DEFAULT 0,
    id_trabajo INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_chequeo ),
    FOREIGN KEY (id_trabajo) REFERENCES trabajo(id_trabajo)
);	

-- Table: sucursal
CREATE TABLE sucursal (
	id_sucursal INT UNSIGNED NOT NULL AUTO_INCREMENT,
    num_local INT UNSIGNED NOT NULL,
    barrio VARCHAR (100) NOT NULL,
    id_trabajo INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_sucursal),
    FOREIGN KEY (id_trabajo) REFERENCES trabajo(id_trabajo)
    );	


-- Table: pago
CREATE TABLE pago (
	id_pago INT UNSIGNED NOT NULL AUTO_INCREMENT,
    met_pago VARCHAR (100) NOT NULL,
    promo BOOLEAN NOT NULL DEFAULT 0,
    id_cliente INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_pago),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);	



INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (1, 'Juan Perez', '1125415896', '25148963');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (2, 'Luis Mando', '1121452896', '37947965');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (3, 'Pedro Miro', '1187456952', '14258520');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (4, 'Pepe Anchi', '1158745963', '25412014');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (5, 'Franco Diot', '1158632145', '35210014');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (6, 'Mario Barro', '1165485214', '25874102');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (7, 'Miguel Ito', '1142588547', '24125552');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (8, 'Debora Fruiz', '1147852145', '30123210');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (9, 'Cristian Alorda', '1152159875', '32587410');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (10, 'Diego Lopez', '1143698521', '36251447');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (11, 'Carlos Maro', '1140232022', '30120007');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (12, 'Patricia Luiz', '1144520369', '11456220');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (13, 'Natali Hide', '1145200036', '25020274');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (14, 'Vanina Poli', '1147785520', '25141474');
INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (15, 'Guido Turin', '1145693000', '21000369');


INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (1, 'Volkswagen', 'Gol', '25000', '15');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (2, 'Ford', 'Focus', '65000', '12');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (3, 'Renault', 'Sandero', '22000', '10');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (4, 'Volkswagen', 'Gol', '45000', '8');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (5, 'Ford', 'Fiesta', '65000', '7');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (6, 'Renault', 'Megane', '36000', '2');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (7, 'Renault', 'Clio', '98000', '1');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (8, 'Volkswagen', 'Polo', '10000', '6');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (9, 'Renault', 'Sandero', '24500', '9');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (10, 'Ford', 'Ka', '23000', '3');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (11, 'Chevrolet', 'Onix', '55000', '4');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (12, 'Volkswagen', 'Passat', '59000', '5');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (13, 'Ford', 'Mondeo', '70000', '11');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (14, 'Chevrolet', 'Onix', '68000', '13');
INSERT INTO auto (`id_auto`, `marca`, `modelo`, `kms`, `id_cliente`) values (15, 'Ford', 'Fiesta', '88000', '14');


INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (1, '8521', '14');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (2, '6544', '4');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (3, '5654', '1');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (4, '2344', '3');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (5, '2343', '2');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (6, '5858', '15');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (7, '5454', '12');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (8, '4575', '11');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (9, '1455', '10');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (10, '7854', '6');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (11, '4455', '7');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (12, '1121', '8');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (13, '1023', '5');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (14, '7450', '9');
INSERT INTO trabajo (`id_trabajo`, `num_empleado`, `id_auto`) values (15, '9630', '13');


INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (1, '5', 'Elaion', '13');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (2, '3', 'Castrol', '11');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (3, '5', 'Motul', '12');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (4, '4', 'Elaion', '1');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (5, '5', 'Motul', '3');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (6, '5', 'Motul', '4');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (7, '5', 'Castrol', '6');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (8, '3', 'Elaion', '9');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (9, '5', 'Castrol', '7');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (10, '4', 'Elaion', '15');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (11, '3', 'Castrol', '8');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (12, '6', 'Elaion', '2');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (13, '6', 'Castrol', '14');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (14, '5', 'Elaion', '5');
INSERT INTO producto (`id_producto`, `litros`, `marca`, `id_trabajo`) values (15, '3', 'Motul', '10');


INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (1, '0', '10');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (2, '0', '9');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (3, '0', '1');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (4, '1', '12');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (5, '1', '13');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (6, '1', '15');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (7, '0', '3');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (8, '1', '8');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (9, '1', '7');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (10, '0', '6');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (11, '1', '14');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (12, '0', '2');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (13, '1', '4');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (14, '0', '5');	
INSERT INTO chequeo (`id_chequeo`, `revisado`, `id_trabajo`) values (15, '1', '11');


INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (1, '5', 'Flores', '13');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (2, '3', 'Villa del Parque', '11');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (3, '5', 'Monserrat', '12');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (4, '4', 'Flores', '1');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (5, '5', 'Monserrat', '3');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (6, '5', 'Monserrat', '4');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (7, '5', 'Villa del Parque', '6');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (8, '3', 'Flores', '9');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (9, '5', 'Villa del Parque', '7');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (10, '4', 'Flores', '15');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (11, '3', 'Villa del Parque', '8');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (12, '6', 'Flores', '2');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (13, '6', 'Villa del Parque', '14');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (14, '5', 'Flores', '5');
INSERT INTO sucursal (`id_sucursal`, `num_local`, `barrio`, `id_trabajo`) values (15, '3', 'Monserrat', '10');	


INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (1, 'tarjeta de credito', '0', '10');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (2, 'tarjeta de debito', '0', '9');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (3, 'tarjeta de credito', '0', '1');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (4, 'efectivo', '1', '12');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (5, 'tarjeta de debito', '1', '13');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (6, 'tarjeta de credito', '1', '15');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (7, 'efectivo', '0', '3');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (8, 'tarjeta de debito', '1', '8');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (9, 'tarjeta de credito', '1', '7');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (10, 'efectivo', '0', '6');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (11, 'tarjeta de debito', '1', '14');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (12, 'tarjeta de debito', '0', '2');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (13, 'efectivo', '1', '4');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (14, 'tarjeta de debito', '0', '5');	
INSERT INTO pago (`id_pago`, `met_pago`, `promo`, `id_cliente`) values (15, 'tarjeta de credito', '1', '11');


-- VIEWS -- 

CREATE VIEW duenio_auto AS
SELECT cliente.id_cliente, cliente.nombre_apellido, auto.marca, auto.modelo
FROM cliente, auto
WHERE cliente.id_cliente = auto.id_cliente;

SELECT * 
FROM duenio_auto;

CREATE VIEW trabajo_empleado AS
SELECT auto.id_auto, auto.marca, auto.modelo, trabajo.num_empleado
FROM auto, trabajo
WHERE auto.id_auto = trabajo.id_auto;

SELECT * 
FROM trabajo_empleado;

CREATE VIEW producto_util AS
SELECT producto.id_producto, producto.marca, producto.litros, trabajo.num_empleado
FROM producto, trabajo
WHERE producto.id_producto = trabajo.id_auto;

SELECT * 
FROM producto_util;

CREATE VIEW tbj_comp AS
SELECT trabajo.id_trabajo, trabajo.num_empleado, chequeo.revisado, sucursal.barrio
FROM trabajo, chequeo, sucursal
WHERE trabajo.id_trabajo = chequeo.id_trabajo = sucursal.id_trabajo;

SELECT * 
FROM fue_check;

CREATE VIEW pago AS
SELECT cliente.id_cliente, cliente.nombre_apellido, pago.met_pago, pago.promo
FROM cliente, pago
WHERE cliente.id_cliente = pago.id_cliente;

SELECT * 
FROM completo;


-- FUNCTIONS --


delimiter $$
CREATE FUNCTION `auto_cliente`(par_id_cliente INT) 
RETURNS char(255)
READS SQL DATA
BEGIN
	declare resultado char (255);
    set resultado = (select modelo from auto where id_cliente = par_id_cliente);
RETURN resultado;
END$$

delimiter $$
CREATE FUNCTION `revision`(id_auto_p INT) 
RETURNS char(255)
READS SQL DATA
BEGIN
	declare var1 int;
    declare var2 int;
    set var1 = (select id_trabajo from trabajo where id_auto_p = id_auto);
    set var2 = (select revisado from chequeo where var1 = id_trabajo);
    if (var2) > 0 then
		return ('El auto fue chequeado');
	else
		return ('El auto no fue chequeado');
	end if; 
    
END$$


--Stored procedures --

DELIMITER $$
USE `lubricentroV1`$$

CREATE PROCEDURE `order_by` (in var char(50), in var2 int)
BEGIN
	if var2 = 0 then
		set @orden = concat ('order by ', var, ' desc');
    else
		set @orden = concat ('order by ', var, ' asc');
    end if;
		set @final = concat ( 'select * from cliente ', @orden);
    prepare runSQL from @final;
    execute runSQL;
    deallocate prepare runSQL;
END$$

DELIMITER $$

CREATE PROCEDURE `sp_insert`(in nom char(200), in tel int, in p_dni int)
BEGIN
	insert into cliente ( nombre_apellido, telefono, dni ) values (nom, tel, p_dni);
END $$


/* TRIGGERS */

CREATE TABLE `insert_auto` (
  `id_auto` int unsigned NOT NULL AUTO_INCREMENT,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `kms` int unsigned NOT NULL,
  `id_cliente` int unsigned NOT NULL,
  PRIMARY KEY (`id_auto`)
  ) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TRIGGER AFT_INS_auto
AFTER INSERT ON auto
FOR EACH ROW
INSERT INTO insert_auto
VALUES (NEW.id_auto, NEW.marca, NEW.modelo, NEW.kms, NEW.id_cliente);

INSERT INTO auto 
VALUES (16, 'Peugeot', '106', 25000, 11);


CREATE TABLE logs( 
	fecha DATE,
    hora TIME,
    usuario VARCHAR(100));
    
CREATE TRIGGER BEF_DEL_CLIENTE_LOGS
BEFORE INSERT ON cliente
FOR EACH ROW
INSERT INTO logs
VALUES (CURDATE(), CURTIME(), USER());
    
DELETE FROM cliente
where id_cliente = 10


--# SENTENCIAS // USUARIOS


--# Utilizamos BBDD mysql
Use mysql;

--# Creamos usuarios
create user bruno@localhost identified by 'Coder2022';

create user martin@localhost identified by 'Coder_2022';

--# Otorgamos perdmisos (1° lectura, modificacion, insersion), (2° solo lectura)
grant select, update, insert on lubricentroV1.* to bruno@localhost;

grant select on lubricentroV1.* to martin@localhost;

--# Muestra los permisos otorgados
show grants for martin@localhost;
show grants for bruno@localhost;


--# TCL

set autocommit =0;

select * from cliente;

start transaction;
	DELETE FROM cliente
	where id_cliente = 13;
rollback;

commit;

select * from cliente;

INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (13, 'Natali Hide', '1145200036', '25020274');

select * from cliente;


start transaction;

	INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (17, 'Mari Mendoza', '115585210032', '66332258');
	INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (18, 'Agustina Bolilla', '1122336685', '36521477');
	INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (19, 'Carolina Bartoli', '1154852003', '36257412');
	INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (20, 'Juan Manuel Moro', '1169852212', '25412541');
savepoint primeros_cuatro;
    	INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (21, 'Paolo Mico', '1185202215', '22003698');
	INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (22, 'Josefina Marti', '1169852211', '11254789');
	INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (23, 'Miguel Angel', '1133220058', '11230000');
	INSERT INTO cliente (`id_cliente`, `nombre_apellido`, `telefono`, `dni`) values (24, 'Guido Bastos', '116996321', '11007785');
savepoint segundos_cuatro;
release savepoint primeros_cuatro;


