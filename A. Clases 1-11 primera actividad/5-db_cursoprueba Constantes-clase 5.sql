set serveroutput on;

DECLARE
--Constantes
mensaje constant varchar2(30):= 'Muy buenas tardes a todos';
numero constant number(6):= 35000;
-- se define una constante con la palabra reservada constant
--no se puede redefinir porque genera error 
--si se redefine(volver a escribir la misma constante(mensaje) y se quita la palabra reservada constant toma el ultimo valor de definicion.

BEGIN
dbms_output.put_line('mensaje: ' || mensaje);
dbms_output.put_line('numero: ' || numero);

END;
