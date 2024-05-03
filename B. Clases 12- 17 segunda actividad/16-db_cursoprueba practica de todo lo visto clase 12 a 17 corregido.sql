set serveroutput on;
 
DECLARE
salario number := 100000;
aumento number:= 0;
salarioTotal number;

BEGIN
if(salario between 0 and 600) then 
aumento:= salario * 0.15;

elsif(salario between 601 and 950) then
aumento:= salario * 0.135;

elsif(salario between 951 and 1400) then
aumento:= salario * 0.10;

elsif(salario between 1401 and 2000) then
aumento:= salario *0.05;

else
dbms_output.put_line('EL SALARIO INGRESADO NO ES VALIDO');

end if;
salarioTotal:= salario + aumento;
dbms_output.put_line('El Salario Es: ' || salario || ' USDs');
dbms_output.put_line('El Aumento Es: ' ||aumento || ' USDs');
dbms_output.put_line('El Salario Total Es: ' || salarioTotal || ' USDs');

END;
