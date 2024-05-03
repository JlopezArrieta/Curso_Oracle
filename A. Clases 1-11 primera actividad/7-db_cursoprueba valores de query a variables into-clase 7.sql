set serveroutput on;
DECLARE
cantidad number;
usuario varchar2(100);

BEGIN
--aqui se realiza las consulta por separado
/*select user into usuario from dual;
dbms_output.put_line('Usuario: ' || usuario);
select count(*) into cantidad from dual;
dbms_output.put_line('Cantidad: ' || cantidad);
*/

--aqui se realiza la consulta en un solo query.
select user, count(*) into usuario, cantidad from dual;
dbms_output.put_line('Usuario: ' || usuario);
dbms_output.put_line('Cantidad: ' || cantidad);

END;
