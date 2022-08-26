--# Utilizamos BBDD mysql
Use mysql;

--# Creamos usuarios
create user bruno@localhost identified by 'Coder2022';

create user martin@localhost identified by 'Coder_2022';

--# Otorgamos perdmisos (1° lectura, modificacion, insersion), (2° solo lectura)
grant select, update, insert on lubricentro.* to bruno@localhost;

grant select on lubricentro.* to martin@localhost;

--# Muestra los permisos otorgados
show grants for martin@localhost;
show grants for bruno@localhost;