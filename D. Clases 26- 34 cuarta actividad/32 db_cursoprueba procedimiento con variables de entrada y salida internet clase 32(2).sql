--===Inicio Procedimiento Con Variables de entradas Aumento de salario===--
create or replace procedure aumentoSalario(anio in number, porcentaje in number)
as
--Procedimiento con variables y salidas
  begin
      update empleados set salario = salario + (salario * porcentaje / 100) 
      where (extract(year from current_date) - extract(year from fecha_nacimiento)) > anio;       
end;

select * from empleados;
execute aumentoSalario(10, 10);
-- esto busca el anio del empleado y comparamos el anio ingresado si es menor a la resta del anio de nacimiento menos el anio actual.

