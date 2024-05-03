set serveroutput on;
 
DECLARE
numRan number := round(dbms_random.value(0,5));

BEGIN
dbms_output.put_line(numRan);

case
  when numRan = 0 then 
  dbms_output.put_line('Cero');
  when numRan = 1 then 
  dbms_output.put_line('Uno');
  when numRan = 2 then 
  dbms_output.put_line('Dos');
  when numRan = 3 then 
  dbms_output.put_line('Tres');
  when numRan = 4 then 
  dbms_output.put_line('Cuatro');
 else
  dbms_output.put_line('Cinco');
end case;

END;
