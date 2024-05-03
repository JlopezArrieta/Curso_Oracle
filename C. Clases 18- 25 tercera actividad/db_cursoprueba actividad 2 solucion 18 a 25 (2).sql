set serveroutput on;

declare
--solucion actividad 2. Factorial de un Numero.
   numero number := 5;
   resultado number := numero;
   valor number := numero;
  
begin
        while (numero) >1 loop
         numero := numero - 1;
         resultado := resultado *( numero);
         dbms_output.put_line(valor || ' x '|| numero || ' = ' || resultado);
         valor := resultado;
        
         end loop;
           dbms_output.put_line('El Factorial de 5 Es = ' || resultado); 
end;

