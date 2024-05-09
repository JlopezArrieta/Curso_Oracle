set serveroutput on;
declare
--Cursores en tiempo de ejecucion
      promedio number;
begin
      for fila in (select * from notas order by nombre asc) loop
        promedio := (fila.nota1 + fila.nota2 + fila.nota3 + fila.nota4) / 4;
--Realiza un ciclo for con fila de variable y un limite (select * from notas order by nombre asc) donde alaves se ordenan los nombres de forma ascendente y se imprimen en la consola.
        
        dbms_output.put_line('Nombre: ' || fila.nombre || ', promedio: ' || promedio);
     end loop;
      
end;

--select * from notas;
--select * from notas order by nombre desc




