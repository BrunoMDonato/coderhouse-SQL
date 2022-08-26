
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

CREATE VIEW fue_check AS
SELECT trabajo.id_trabajo, trabajo.num_empleado, chequeo.revisado
FROM trabajo, chequeo
WHERE trabajo.id_trabajo = chequeo.id_trabajo;

SELECT * 
FROM fue_check;

CREATE VIEW completo AS
SELECT trabajo.id_trabajo, trabajo.num_empleado, producto.marca, producto.litros, chequeo.revisado
FROM trabajo, producto, chequeo
WHERE trabajo.id_trabajo = chequeo.id_trabajo = producto.id_trabajo;

SELECT * 
FROM completo;