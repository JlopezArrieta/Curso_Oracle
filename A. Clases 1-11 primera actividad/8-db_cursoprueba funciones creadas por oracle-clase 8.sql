set serveroutput on;

DECLARE
--Funciones creadas por Oracle
nombre varchar2(50) := ' Javier';
apellido varchar2(50) := 'Lopez';
nombreCompleto varchar2(100);
hoy date := sysdate;

nombre2 varchar2(50);

BEGIN
nombreCompleto := nombre || ' ' || apellido;
dbms_output.put_line('Nombre Completo: ' || nombreCompleto );

dbms_output.put_line('Largo: ' || length(nombre) );
--largo de la cadena o estring
dbms_output.put_line('Recortar: ' || trim(nombre) || ';' );
--trim= recorta los espacios vacios al principio y final
dbms_output.put_line('Miniscula: ' || lower(nombre));
--lower= toma la cadena y la convierte en minuscula.
dbms_output.put_line('Mayuscula: ' || upper(nombre));
--upper= toma la cadena y la convierte en mayuscula.

nombre := trim(nombre);
dbms_output.put_line('Cortar: ' || substr(nombre,1,4));
--substr= el primer num(1) me dice desde donde y el segundo num(4) cuantas letras o caracteres va tomar.
dbms_output.put_line('Reemplazo: ' || replace(nombre,'er','ii') );

--Funcion de fecha
dbms_output.put_line('Hoy: ' || hoy );
dbms_output.put_line('Agregar mes: ' || add_months(hoy,1) );
-- add_months(hoy,1) esto lo que hace es agregar un mes a la fecha, ejm 11/02/2024 queda asi 11/03/2024.
dbms_output.put_line('Agregar un dia: ' || (hoy + 1) );
--(hoy + 1) esto le suma un dia mas a la fecha ejm 11/02/2024 --> 12/02/2024.
dbms_output.put_line('Dia: ' || to_char(hoy, 'dd') );
--to_char(hoy, 'dd') Esto lo que hace sacar de la fecha solo el dia. Ejm 11/02/2024 --> 11.
dbms_output.put_line('Dia Mes: ' || to_char(hoy, 'dd-mm') );
--to_char(hoy, 'dd-mm') Esto lo que hace sacar de la fecha solo el dia y el mes. Ejm 11/02/2024 --> 11-04.
dbms_output.put_line('Dia Mes: ' || to_char(hoy, 'mm') );
--solo mes.
dbms_output.put_line('Dia Mes: ' || to_char(hoy, 'yyyy') );
--solo anno.

dbms_output.put_line('NVL: ' || NVL(nombre2,  'Es Nulo') );
--NVL(nombre2,  'Es Nulo') si este valor nombre2 es nulo pon un comentario que dica Es Nulo.

END;
