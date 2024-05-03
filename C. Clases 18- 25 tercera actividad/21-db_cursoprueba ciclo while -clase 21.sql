set serveroutput on;
 
DECLARE
--Ciclo while
 -- x number := 1;
  numero number := 0;
  resultado number;

BEGIN
/*
  while x <=10 loop
    dbms_output.put_line(x);
    x := x + 1;
  end loop;
  */
  --TABLA DE MUTIOLICAR
  while numero <= 5 loop
    resultado := 3 * numero;
    dbms_output.put_line('3 x '|| numero || ' = ' || resultado);
    numero := numero + 1;
    
  end loop;

END;
