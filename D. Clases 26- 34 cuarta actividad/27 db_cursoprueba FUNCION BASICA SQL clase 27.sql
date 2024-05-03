create or replace function total_empleados
return number

is
    total number := 0;

begin
    select count(*) into total from EMPLEADOS;
    
    return total;
    
end;

 --select total_empleados  from dual;
