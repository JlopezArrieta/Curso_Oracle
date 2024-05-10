set serveroutput on;
declare
--Excepciones Personalizadas.
     ran number := round(dbms_random.value(1,3));
     
     error1 exception;
     error2 exception;
     error3 exception;
begin
     case
          when ran =1 then 
              raise error1;
          when ran =2 then
              raise error2;
          when ran =3 then 
              raise error3;
    end case;
    dbms_output.put_line('Yo Nunca me ejecutare');
    exception
        when error1 then
           dbms_output.put_line('No maneamos el error 1');
        when error2 then
           dbms_output.put_line('No maneamos el error 2');
        when error3 then
           dbms_output.put_line('No maneamos el error 3');
end;








