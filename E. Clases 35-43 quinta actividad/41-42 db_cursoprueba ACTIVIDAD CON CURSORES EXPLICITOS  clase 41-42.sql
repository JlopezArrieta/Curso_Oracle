set serveroutput on;
declare
--ACTIVIDAD CURSORES EXPLICITOS.   
--Variables para almacenar los datos del empleado.
        empleado empleados.nombre%type;
        salario empleados.salario%type;
        diastrabajados empleados.diastrabajados%type;
        salariodiario number(10,2);
        salarioapagar number(10,2);
        
         cursor c_empleado is
         select nombre, salario, diastrabajados from empleados;
--===Inicio de procedimiento===--
      procedure imprimir_empleado(p_nombre in varchar2,  p_salariodiario in number, p_diastrabajados in number, p_salarioapagar in number)
      is
      begin
           dbms_output.put_line('=================================');
           dbms_output.put_line('Empleado: ' || p_nombre);
           dbms_output.put_line('Salario Diario: ' || p_salariodiario);
           dbms_output.put_line('Dias Trabajados: ' || p_diastrabajados);
           dbms_output.put_line('Salario a Pagar: ' || p_salarioapagar);
           dbms_output.put_line('=================================');
      end;
--===Fin Inicio de procedimiento===--
   
begin
     open c_empleado;
       loop
         fetch c_empleado into empleado, salario, diastrabajados;
         exit when c_empleado%notfound;
           salariodiario := salario / 30;
           salarioapagar := salariodiario * diastrabajados;
        
        imprimir_empleado(empleado, salariodiario, diastrabajados, salarioapagar);
       end loop;
     close c_empleado;   
end;








