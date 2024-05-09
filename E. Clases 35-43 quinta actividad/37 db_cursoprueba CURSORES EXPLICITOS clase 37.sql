set serveroutput on;
declare
--Cursores Explicitos: En este caso se tiene que declarar o definir el Cursor dentro de DECLARE.
      nombre empleados.nombre%type; --Esto es para que esta variable sea consecuente con el tamano de la misma de la tabla empleados.
      salario empleados.salario%type;
        --===Definocion de Cursor===--
        cursor c_empleado is
           select nombre, salario from empleados order by nombre asc;
        --Con esto se esta definendo un cursor llamado c_empleado con la declaracion de nombre y salario de la tabla empleados.   
begin
      open c_empleado;
        loop
          fetch c_empleado into nombre, salario;
          exit when c_empleado%notfound;
            dbms_output.put_line( nombre || ' ' || salario);
        end loop;
      close c_empleado; 
end;








