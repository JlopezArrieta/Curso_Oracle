set serveroutput on;

declare
--solucion actividad 1. Pomedio de notas.
   type notasArray is varray(4) of number;
   notas notasArray;
   sumaNotas number;
   totalNotas number;
   promedio number;
  
begin
     notas := notasArray(95,60,75,85);
     sumaNotas := 0;
     totalNotas := 0;
     promedio := 0;
        for i in 1..4 loop
         sumaNotas := sumaNotas + notas(i);
         totalNotas := totalNotas + 1;

          end loop;
             promedio := sumaNotas / totalNotas;
             dbms_output.put_line('El Promedio de las Notas Es: ' || promedio);
    
end;

