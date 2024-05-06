create or replace function mayor_entre(x in number, y in number)
 return number
is
begin 
     if  x > y then 
        return x;
     else
        return y;
     end if;
end;
--select nombre, fecha_nacimiento, salario, f_empleados(fecha_nacimiento, salario) from EMPLEADOS;
















