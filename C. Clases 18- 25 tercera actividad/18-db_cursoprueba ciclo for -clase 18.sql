set serveroutput on;
 
DECLARE
--Ciclo FOR

BEGIN
<<ciclo_1>>
for i in 0..10 loop
--itera los numeros del 0 al 10 y los muestra en pantalla.
--dbms_output.put_line('Iteracion: ' || i);

--Tabla de multiplicar del 2.
--dbms_output.put_line(i || ' * 2 = ' || i*2);

--otra forma de realizar en una misma linea una iteracion.
dbms_output.put(i );
dbms_output.put( ' * 2 = ');
dbms_output.put_line(i*2);

end loop  ciclo_1;

END;
