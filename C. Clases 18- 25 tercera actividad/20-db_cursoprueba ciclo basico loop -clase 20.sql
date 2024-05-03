set serveroutput on;
 
DECLARE
--Ciclo Basico LOOP
x number := 10;

BEGIN
  loop
  dbms_output.put_line(x);
  x := x + 10;
  
  if(x > 120) then
  exit;
  end if;
  end loop;

END;

















