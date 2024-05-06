/*
create table EMPLEADOS(
ID number(2),
NOMBRE varchar2(20),
FECHA_NACIMIENTO date,
SALARIO number(10,2),
ACTUALIZADO date
);

--set define off;
--me permite crear la tabla y de una insertar los datos a dicha tabla.
insert into EMPLEADOS(ID, NOMBRE, FECHA_NACIMIENTO, SALARIO) 
values (1, 'Tonya Vasquez', to_date('10/10/1980', 'DD/MM/YYYY'), 2500000);

insert into EMPLEADOS(ID, NOMBRE, FECHA_NACIMIENTO, SALARIO) 
values (2, 'Marthews Robbins', to_date('5/1/1985', 'DD/MM/YYYY'), 2200000);

insert into EMPLEADOS(ID, NOMBRE, FECHA_NACIMIENTO, SALARIO) 
values (3, 'Braian Toler', to_date('23/8/1982', 'DD/MM/YYYY'), 2100500);

insert into EMPLEADOS(ID, NOMBRE, FECHA_NACIMIENTO, SALARIO) 
values (4, 'Javi Torres', to_date('15/11/1990', 'DD/MM/YYYY'), 2100000);

insert into EMPLEADOS(ID, NOMBRE, FECHA_NACIMIENTO, SALARIO) 
values (5, 'Tomas Velez', to_date('10/10/1988', 'DD/MM/YYYY'), 3100000);

insert into EMPLEADOS(ID, NOMBRE, FECHA_NACIMIENTO, SALARIO) 
values (6, 'Albert Maya', to_date('10/12/1992', 'DD/MM/YYYY'), 2600000);

insert into EMPLEADOS(ID, NOMBRE, FECHA_NACIMIENTO, SALARIO) 
values (7, 'Pilar Mingueza', to_date('8/8/1987', 'DD/MM/YYYY'), 3300000);

insert into EMPLEADOS(ID, NOMBRE, FECHA_NACIMIENTO, SALARIO) 
values (8, 'Camila Mendez', to_date('1/1/1984', 'DD/MM/YYYY'), 2410000);

insert into EMPLEADOS(ID, NOMBRE, FECHA_NACIMIENTO, SALARIO) 
values (9, 'Majo Martinez', to_date('31/5/1989', 'DD/MM/YYYY'), 2900000);

insert into EMPLEADOS(ID, NOMBRE, FECHA_NACIMIENTO, SALARIO) 
values (10, 'Fernando Lopez', to_date('21/10/1982', 'DD/MM/YYYY'), 2800000);

select * from EMPLEADOS;
--drop table EMPLEADOS;
*/

create table libros(
ID number(2),
titulo varchar2(30),
autor varchar2(30),
precio number(8,2)
);

insert into libros(ID, titulo, autor, precio) 
values (1, 'El quijote', 'Miguel De Cervantes', 45000);
insert into libros(ID, titulo, autor, precio) 
values (2, 'Cien anhos de soledad', 'Gabriel Garcia Marquez', 49000);
insert into libros(ID, titulo, autor, precio) 
values (3, 'El alquimista', 'Pablo Cohelo', 42000);

--drop table libros;
select * from libros;

