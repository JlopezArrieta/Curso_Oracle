set serveroutput on;
 
DECLARE
salario number := 100000;
--aumento number;
--salarioTotal number;

BEGIN
if(salario between 0 and 600) then 
dbms_output.put_line('El Salario Es: ' || salario || ' USDs');
dbms_output.put_line(' El Aumento Es: ' ||(salario * 0.15) || ' USDs');
dbms_output.put_line('El Salario Total Es: ' || (salario * 0.15 + salario) || ' USDs');

elsif(salario between 601 and 950) then
dbms_output.put_line('El Salario Es: ' || salario || ' USDs');
dbms_output.put_line(' El Aumento Es: ' ||(salario * 0.135) || ' USDs');
dbms_output.put_line('El Salario Total Es: ' || (salario * 0.135 + salario) || ' USDs');

elsif(salario between 951 and 1400) then
dbms_output.put_line('El Salario Es: ' || salario || ' USDs');
dbms_output.put_line(' El Aumento Es: ' ||(salario * 0.10) || ' USDs');
dbms_output.put_line('El Salario Total Es: ' || (salario * 0.10 + salario) || ' USDs');

elsif(salario between 1401 and 2000) then
dbms_output.put_line('El Salario Es: ' || salario || ' USDs');
dbms_output.put_line(' El Aumento Es: ' ||(salario *0.05) || ' USDs');
dbms_output.put_line('El Salario Total Es: ' || (salario * 0.05 + salario) || ' USDs');

else
dbms_output.put_line('El salario ingresado no es valido');

end if;

END;
