set serveroutput on;
 
DECLARE
nota number := 59;

BEGIN
if(nota < 60) then
dbms_output.put_line('Reprobaste el curso');

elsif(nota between 60 and 69) then 
dbms_output.put_line('Tienes que realizar un examen de recuperacion del curso');

else
dbms_output.put_line('Aprobaste el curso');

end if;
dbms_output.put_line('La nota es: ' || nota);

END;
