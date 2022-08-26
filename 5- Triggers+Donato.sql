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
