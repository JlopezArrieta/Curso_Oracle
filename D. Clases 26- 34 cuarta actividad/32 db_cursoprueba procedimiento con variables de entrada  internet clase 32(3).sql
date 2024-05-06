--===Inicio Procedimiento Con Variables de entradas ingreso de un empleado===--
create or replace procedure ingresoEmpleado(ID in number, nombre in varchar2, fecha in date)
as
--Procedimiento con variables ingreso de un empleado
  begin
       insert into empleados values(ID, nombre, fecha, null, null);     
  end;

select * from empleados;
execute ingresoEmpleado(11, 'Camilo Perez', to_date('2000/01/05', 'yyyy-mm-dd'));
-- estoingresa un nuevo empleado a la tabla de empleados

