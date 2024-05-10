set serveroutput on;
declare
--Manejo de excepciones.
     v_nombre varchar2(100);
begin
     select nombre into v_nombre from empleados where id = 100;
     dbms_output.put_line(v_nombre);
     
     exception 
     --when no_data_found then 
          --dbms_output.put_line('No encontro empleado con ese codigo');
    
     when others then 
                    dbms_output.put_line('Algo raro paso');


end;








