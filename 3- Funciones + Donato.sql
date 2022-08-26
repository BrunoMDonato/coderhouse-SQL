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
