set serveroutput on;
declare
    empleado empleados%rowtype;
       cursor c_empleados is 
       select * from empleados;
        
--==Inicio de procedimiento==-- 
       procedure imprimir_empleado(empleado empleados%rowtype) is
          salariodiario number(10,2);
          salarioapagar number(10,2);
       begin
          salariodiario := empleado.salario / 30;
          salarioapagar := salariodiario * empleado.diastrabajados;
          
          dbms_output.put_line('================================');
          dbms_output.put_line('Nombre: ' || empleado.id);
          dbms_output.put_line('Salario Diario: ' || salariodiario);
          dbms_output.put_line('Dias Trabajados: ' || empleado.diastrabajados);
          dbms_output.put_line('salario a pagar: ' || salarioapagar);
          dbms_output.put_line('================================');
       end;
--==Fin de procedimiento==--
begin
      open c_empleados;
        loop
          fetch c_empleados into empleado;
          exit when c_empleados%notfound;
          imprimir_empleado(empleado);
        end loop;
    close c_empleados;  
end;

--select * from empleados;






