set serveroutput on;
declare
       a number:= 18;
       b number:= 15;
       c number;
begin
       menorEntre(a,b,c);
       dbms_output.put_line('El Menor Es:= ' || c);
end;






