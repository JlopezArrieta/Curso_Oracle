/*
create table notasEstudiantes(
nombreApellido varchar2(40),
nota1 number(2,1),
nota2 number(2,1),
nota3 number(2,1),
nota4 number(2,1), 
promedio number(2,1)
);
--drop table notasEstudiantes;

insert into notasEstudiantes values ('Andrea Serna', 4.1, 2.9, 4.4, 4.0, null);
insert into notasEstudiantes values ('Paola Duarte', 4.0, 3.9, 4.0, 4.4, null);
insert into notasEstudiantes values ('Claudio Cortes', 4.0, 3.3, 2.4, 4.5, null);
insert into notasEstudiantes values ('Pedro Conde', 4.1, 3.2, 4.1, 4.8, null);
insert into notasEstudiantes values ('Andres Soto', 4.0, 3.3, 4.1, 4.2, null);
insert into notasEstudiantes values ('Paola Duarte', 4.2, 4.4, 3.9, 3.8, null);
insert into notasEstudiantes values ('Carlos Cortes', 4.0, 3.3, 2.4, 4.1, null);
insert into notasEstudiantes values ('Patricia Cotera', 4.1, 3.2, 4.1, 4.8, null);                                                                                                                                                   
insert into notasEstudiantes values ('paulo Cortes', 4.0, 3.3, 2.4, 4.5, null);
insert into notasEstudiantes values ('Samy Miranda', 3.5, 3.6, 4.1, 4.1, null);                                                                   

select * from notasEstudiantes;
*/

CREATE TABLE NOTAS (NOMBRE VARCHAR2(100), NOTA1 NUMBER, NOTA2 NUMBER, NOTA3 NUMBER, NOTA4 NUMBER, PROMEDIO NUMBER);
--SET DEFINE OFF;
Insert into NOTAS values ('Tonya Vazquez',100,80,99,77, null);
Insert into NOTAS values ('Mathews Robbins',88,56,100,89,null);
Insert into NOTAS values ('Walton Vincent',77,38,50,100,null);
Insert into NOTAS values ('Audra Wade',92,93,93,80,null);
Insert into NOTAS values ('Susanne Moody',70,67,78,83,null);
Insert into NOTAS values ('Stevenson Dickson',45,90,70,89,null);
Insert into NOTAS values ('Hinton Cooper',76,80,60,78,null);
Insert into NOTAS values ('Hahn Brown',70,88,73,93,null);
Insert into NOTAS values ('Bennett Brady',90,95,100,99,null);
Insert into NOTAS values ('Mueller Jimenez',65,70,85,96,null);

--drop table notas;
select * from notas;





































