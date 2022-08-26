--Stored procedures

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
END


CREATE PROCEDURE `sp_insert`(in nom char(200), in tel int, in p_dni int)
BEGIN
	insert into cliente ( nombre_apellido, telefono, dni ) values (nom, tel, p_dni);
END

