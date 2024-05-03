set serveroutput on;
 
DECLARE
--Ciclo FOR  CON CONTINUE Y EXIT

BEGIN
/*
--exit = termina el ciclo hasta la condicion que fue puesta.
<<ciclo_1>>
for i in 0..10 loop
--otra forma de realizar en una misma linea una iteracion.
 if(i = 5) then
 exit;
--con esto le estoy diciendo que cuando llegue a 5 pare y solo realice hasta el numero anterior que es 4.
end if;

dbms_output.put(i );
dbms_output.put( ' * 2 = ');
dbms_output.put_line(i*2);

end loop  ciclo_1;
*/

/*
--continue = no termina el ciclo sino que continua sacando la condicion que fue puesta.
<<ciclo_1>>
for i in 0..10 loop
--otra forma de realizar en una misma linea una iteracion.
 if(i = 5) then
 continue;
--con esto le estoy diciendo que cuando llegue a 5 pare y solo realice hasta el numero anterior que es 4.
end if;

dbms_output.put(i );
dbms_output.put( ' * 2 = ');
dbms_output.put_line(i*2);

end loop  ciclo_1;
*/
--mod = esto es una funcion que nos da el resultado de una division. mod(m,n)<>x;
<<ciclo_1>>
for i in 0..10 loop
--otra forma de realizar en una misma linea una iteracion.
 if(MOD(i, 2) <> 0) then
 continue;
--con esto( if(MOD(i, 2) <> 0) then) le estoy diciendo que solo imprima los numeros pares.
--con esto( if(MOD(i, 2) = 0) then) le estoy diciendo que solo imprima los numeros impares.
end if;

dbms_output.put(i );
dbms_output.put( ' * 2 = ');
dbms_output.put_line(i*2);

end loop  ciclo_1;

END;
