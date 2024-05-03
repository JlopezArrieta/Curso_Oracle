create or replace procedure hola_mundo
as
--Procedimiento Basico
begin
dbms_output.put_line('Hola Mundo');
end;

execute hola_mundo();
-- execute realiza el procedimiento que esta almacenado, este caso el procedimiento de hola_mundo.
