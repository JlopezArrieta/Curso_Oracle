/*
set serveroutput on;
 
declare
--Arrays o Matrices.
-- paises es el nombre del objeto de type array que contiene 5 elementos de tipo varchar de 20 caracteres.
    type paises is varray(5) of varchar2(20);
    nombre paises;

begin
     nombre := paises('argentina', 'colombia', 'ecuador', 'peru', 'bolivia');
     for i in 1..5 loop
     dbms_output.put_line('Nombre: ' || nombre(i));
     end loop;

end;
*/

set serveroutput on;

declare
--Arrays o Matrices.
    type matriz_nombres is varray(5) of varchar2(20);
    type matriz_edad is varray(5) of integer;
    nombres matriz_nombres;
    edad matriz_edad;
    total integer;
    
begin
nombres := matriz_nombres('jose', 'antonio', 'marta', 'luisa', 'camilo');
edad := matriz_edad(23, 31, 20, 36, 19);
total := nombres.count;
  for i in 1..5 loop
   dbms_output.put_line('Nombre: ' || nombres(i) || '  Edad: ' || edad(i));
    end loop;
    
end;

