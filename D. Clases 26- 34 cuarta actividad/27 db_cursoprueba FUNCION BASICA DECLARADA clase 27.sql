set serveroutput on;

declare
      empleados number;
      
begin
     empleados := total_empleados();
     dbms_output.put_line('Total Empleados: ' || empleados);
     
end;

--otra forma seleccionando y dandole ejecutar.
--select total_empleados from dual;

