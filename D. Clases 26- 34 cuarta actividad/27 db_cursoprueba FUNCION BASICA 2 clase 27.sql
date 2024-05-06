/*
create or replace function f_prueba(valor number)
return number
is    
begin
   return valor * 2;
end;

select f_prueba(2) as total from dual;
-- el AS es un alias que se utiliza para remplazar la tabla al momento de sacar un resultado de una tabla.
*/
/*
create or replace function f_costo(valor number)
return varchar
is   
    costo varchar(20);    
begin
   costo := ' ';
   if valor <= 45000 then
   costo := 'Economico';
   else
   costo := 'Costoso';
    end if;
    return costo; 
end;

select titulo, autor, precio, f_costo(precio) from libros;
--select precio, f_costo(precio) from libros;
*/

create or replace function f_empleados(fecha_nacimiento date, salario number)
 return varchar
is
    estado varchar(20);
begin 
     estado := ' ';
     if  extract(year from fecha_nacimiento) >= 1985 and salario >= 2500000 then 
     estado := 'true';
       else
        estado := 'false';
       end if;
         return estado;
end;
--select * from empleados;
select nombre, fecha_nacimiento, salario, f_empleados(fecha_nacimiento, salario) from EMPLEADOS;
















