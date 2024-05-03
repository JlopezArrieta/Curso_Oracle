set serveroutput on;
 
DECLARE
nota number := 85;

BEGIN
if(nota > 90) then
dbms_output.put_line('Excelente');

elsif(nota >= 80) then 
dbms_output.put_line('Muy bien');

elsif(nota >= 70) then
dbms_output.put_line('Bien');

else
dbms_output.put_line('Necesitas mejorar');

end if;
dbms_output.put_line('La nota es: ' || nota);

END;
