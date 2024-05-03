set serveroutput on;
 
DECLARE
--OPERADORES IF, LIKE, BETWEEN, IS Y NULL

A number := 5;
B number := 10;
nombre1 varchar(100):= 'Fernando';
nombre2 varchar(100);

BEGIN
--CONDICIONAL IF CON A Y B. IF
/*
if(A > B) then 
   dbms_output.put_line('A es mayor que B');
end if;
*/

/*
if(B > A) then 
   dbms_output.put_line('B es mayor que A');
end if;
*/

/*
if(A = B) then 
   dbms_output.put_line('A es igual que B');
end if;
*/

/*
if(B <> A) then 
   dbms_output.put_line('B es diferente de A');
end if;
*/

--CONDICIONAL IF CON NOMBRE1 Y NOMBRE2.
/*
if(nombre1 like 'F%') then
 dbms_output.put_line('El nombre empieza F');
end if;
--'F%' significa que cualquier cadena que comience con 'F' cumplirá con esta condición.
if(nombre1 like 'Fer%') then
 dbms_output.put_line('El nombre empieza Fer');
end if;

if(nombre1 like '%nan%') then
 dbms_output.put_line('El nombre contiene nan');
end if;

if(nombre1 like '%do') then
 dbms_output.put_line('El nombre termina en do');
end if;
*/

--CONDICIONAL IF ENTRE A Y B. BETWEEN

if(A between 0 and 10) then
 dbms_output.put_line('A, esta entre 0 y 10.' || ' A = ' || A);
end if;

if(A between 5 and 10) then
 dbms_output.put_line('A, esta entre 0 y 10.' || '  A = ' || A);
end if;

if(B in (5,10,15,20)) then
 dbms_output.put_line('B esta contenido en el grupo de elementos');
end if;
--Esto significa si B esta contenido en el grupo entonces cumpla la condicion.

if(NOMBRE2 is null) then
 dbms_output.put_line('El nombre2 es nulo');
end if;

END;
