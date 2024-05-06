create or replace function calcularpromedio(n1 number, n2 number, n3 number, n4 number)
   return number
as
   promedio number(3,1) := 0;
begin
  promedio := (n1 + n2 + n3 + n4) / 4;
   return promedio;
  end;

select a.*, calcularpromedio( nota1,nota2,nota3,nota4) as promedio from notas a





























