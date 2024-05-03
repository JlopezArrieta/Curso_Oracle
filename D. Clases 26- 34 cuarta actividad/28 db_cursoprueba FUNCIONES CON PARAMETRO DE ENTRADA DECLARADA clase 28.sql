set serveroutput on;

declare
    a number := 13;
    b  number := 17;
    z number;

begin
    z := mayor_entre(a,b);
    
    dbms_output.put_line('El mayor es: ' || z);
end;















