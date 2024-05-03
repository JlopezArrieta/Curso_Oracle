create or replace function edad_actual(fecha_nacimiento in date)
  return number
is
  edad number(3) := 0;
begin
  edad := trunc((to_number(to_char(sysdate, 'yyyymmdd')) - to_number(to_char(fecha_nacimiento, 'yyyymmdd')))/10000);
  
  return edad;
  
  exception
  when others then 
  edad := 0;
  
  return edad;
end;

select nombre, fecha_nacimiento, edad_actual(fecha_nacimiento), sysdate from EMPLEADOS
where edad_actual(fecha_nacimiento) >36 and edad_actual(fecha_nacimiento) <= 43;

select nombre, fecha_nacimiento, sysdate, edad_actual(fecha_nacimiento) from empleados where edad_actual(fecha_nacimiento) <= 36;

--determinar cual es el empleado que gana menis y cual gana mas.











