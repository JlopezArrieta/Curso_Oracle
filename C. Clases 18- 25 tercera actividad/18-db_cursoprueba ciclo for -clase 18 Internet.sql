set serveroutput on;
 
DECLARE
--Ciclo FOR
numero number;

BEGIN
--itera los numeros del 15 al 20 y los muestra en pantalla. En orden ascendente
  for numero in 15..20 loop
  dbms_output.put_line('Valor de Numero: ' || numero);
end loop;

--itera los numeros del 15 al 20 y los muestra en pantalla. En orden descendente con reverse.
  for i in reverse 15..20 loop
  dbms_output.put_line('Valor de i: ' || i);
  end loop;
  
--Tabla de multiplicar del 2.
  for i in  0..10 loop
  dbms_output.put_line('2 x  ' || i || ' = ' || (i * 2));
  end loop;

END;
