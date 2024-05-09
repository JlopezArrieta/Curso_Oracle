set serveroutput on;
declare
--Cursores Explicitos: En este caso se tiene que declarar o definir el Cursor dentro de DECLARE.   
        --===Definocion de Cursor===--
        cursor c_empleado is
           select * from empleados order by nombre asc;
        --Con esto se esta definendo un cursor llamado c_empleado con la declaracion de nombre y salario de la tabla empleados.   
begin
      for fila in c_empleado loop
         dbms_output.put_line(fila.nombre || fila.salario);
      end loop;    
end;








