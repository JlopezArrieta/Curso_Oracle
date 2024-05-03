create table Jugadores(
NOMBRE varchar2(100),
APELLIDO varchar2(100),
EDAD number,
ESTADO varchar2(100),
TELEFONO number,
OFICIO varchar2(100)
);
--Esto realiza la creac ion de una tabla(USUARIO) llamada Empleados.

select * from Empleados; 
--Este select * from EMPLEADOS nosmuestra la tabla creada con ese nombre.

describe Empleados;
--esto me muestra la estructura de la tabla.

drop table Empleados;
--Esto elimina la tabla con este nombre.

insert into Empleados (NOMBRE, APELLIDO, EDAD, ESTADO, TELEFONO, OFICIO) 
values ('Javier', 'Lopez', 20, 'Empleado', 3434, 'BackEnd');
--Esto inserta datos en la tabla de manera mas especifica.

insert into Empleados values ('Deimer', 'Cardona', 35, 'Empleado', 3431, 'Ingeniero');
--Esto inserta datos en la tabla.

delete from Empleados where NOMBRE = 'Jose';
--Esto elimina uno o varios elementos o filas de una tabla o usuario con una sola condicion.

delete from Empleados where NOMBRE = 'Deimer' and EDAD >= 20;
--Esto elimina uno o varios elementos o filas de una tabla o usuario con dos condiciones.

delete from Empleados;
--Esto elimina todas las filas de la tabla u osuario.

alter table Empleados add (NOTA number);
--Esto es para agregar una columna llamada NOTA a la tabla Empleados ya creada.

alter table Empleados drop column NOTA;
--Esto es para eliminar una columna llamada NOTA de una tabla ya creada.

update Empleados set NOTA = 3.5 where NOMBRE = 'Deimer' and APELLIDO = 'Cardona';
--Esto es para modificar o actualizar el valor de una column(NOTA)  con un valor de 3.5 cuando cumpla con las condiciones de NOMBRE y APELLIDO.




