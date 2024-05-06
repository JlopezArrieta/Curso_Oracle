/*
create or replace procedure hola_mundo
as
--Procedimiento Basico
begin
    dbms_output.put_line('Hola Mundo');
end;

execute hola_mundo;
-- execute realiza el procedimiento que esta almacenado, este caso el procedimiento de hola_mundo.
*/

/*
--===Otra Forma de realizar un procedimiento===--
--===Actualizacion de la tabla de empleados===--
set serveroutput on;
create or replace procedure actualizaFechaEmpleado
as
begin
    update empleados set actualizado = to_date ('2024-5-1', 'yyyy-mm-dd' ); 
end;

execute actualizaFechaEmpleado;
select * from empleados;
*/

--===cambiar precio de tabla de libros===--
create or replace procedure aumentoPrecioLibros
as
begin
    update libros set precio = precio + (precio * 0.2);
end;

execute aumentoPrecioLibros;
select * from libros;








