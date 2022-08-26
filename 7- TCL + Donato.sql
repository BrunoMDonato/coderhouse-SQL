set autocommit =0;

select * from cliente;

start transaction;
	DELETE FROM cliente
	where id_cliente = 13;
rollback;

commit;

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


