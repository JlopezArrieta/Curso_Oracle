set serveroutput on;

DECLARE
--Arreglos.
--definimos los arreglos.
type alumnosArray is varray(5) of varchar2(50);
type notasArray is varray(5) of number;

--utilizar los arreglos.
alumnos alumnosArray;
notas notasArray;

BEGIN
alumnos := alumnosArray('Dulce','Maria','Ana','Tomas','Luis');
notas := notasArray(90,100,88,78,91);

dbms_output.put_line(alumnos(1) || ' ' || notas( 1));
--dbms_output.put_line(alumnos(2));
--dbms_output.put_line(alumnos(3));

dbms_output.put_line(notas(1));
--dbms_output.put_line(notas(2));
--dbms_output.put_line(notas(3));

notas(1) := 95;
dbms_output.put_line(notas(1));

END;
