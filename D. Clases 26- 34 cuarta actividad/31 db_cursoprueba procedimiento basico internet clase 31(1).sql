set serveroutput on;
--======Inicio Procedimiento Saludo=======
create or replace procedure saludo
as
--Procedimiento Basico
begin
dbms_output.put_line('Hola a Todos');
end saludo;

begin 
  saludo;
end;
-- esto realiza la ejecucion del procedimiento que esta almacenado, este caso el procedimiento de saludo.

execute saludo;
-- execute realiza el procedimiento que esta almacenado, este caso el procedimiento de saludo.






