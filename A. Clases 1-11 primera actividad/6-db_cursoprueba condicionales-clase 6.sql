set serveroutput on;
DECLARE
--Condicionales
--a number(2):= 40;
--b number(2):= 20;

numero number(3):= 100;

BEGIN
 --if  a  >  b then 
 -- dbms_output.put_line(a || ' es mayor que ' || b);
 --else
  --dbms_output.put_line(b || ' es mayor que ' || a);
--end if; 

 if (numero = 10) then
     dbms_output.put_line(' Valor de numero es 10');
 elsif (numero = 20) then
     dbms_output.put_line(' Valor de numero es 20');
 elsif (numero = 30) then
     dbms_output.put_line(' Valor de numero es 30');
 else
     dbms_output.put_line('Ninguno de los valores fue encontrado');
 end if ;
     dbms_output.put_line('El valor exacto de la variable es ' || numero);
     
END;
