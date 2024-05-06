create or replace procedure actualizarpromedio
as
begin
       update notasEstudiantes
       set promedio = (nota1 + nota2 + nota3 + nota4) / 4 
       where promedio is null;
  end;
--Todo lo anterior se realiza para compilar el procedimiento llamado actualizar promedio 
execute actualizarpromedio;
-- Esto se realiza para terminar de ejecutar el procedimiento correctamente.
begin
   actualizarpromedio;
end;
-- Esto se realiza para terminar de ejecutar el procedimiento correctamente.

select * from notasEstudiantes;









































