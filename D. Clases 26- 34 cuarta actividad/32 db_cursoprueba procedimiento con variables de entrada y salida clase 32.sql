--===Inicio Procedimiento Con Variables de entradas y salidas===--
create or replace procedure menorEntre(x in number, y in number, z out number)
as
--Procedimiento con variables y salidas
begin
    if x > y then
       z:= y;
    else
       z:= x;
      end if;
end;





