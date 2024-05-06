set serveroutput on;
declare
--DEFINIR UNA FUNCION DENTRO DE UN PLs
        salarioPromedio number := 0;
        empleado_salarioAlto varchar2(20):= ' ';
      
      --=====Obtener promedio======
      function obtener_promedio
        return number
      is
        promedio number := 0;
      begin
        select avg(salario) into promedio from empleados;
        return promedio;
      end;
      --=====Fin promedio======
      
      --===Empleado con salario mas alto===
      function empleado_altoSalario
          return varchar2
      is
          nombre_empleado varchar2(30) := ' ';
      begin
          select nombre into nombre_empleado from empleados where salario =  (select max(salario) from empleados);
          return nombre_empleado;
          
      end;
      --===Fin de salario alto===
      
begin --===PLs Principal
        salarioPromedio := obtener_promedio();
        dbms_output.put_line('El Promedio es: ' ||  salarioPromedio);
        
         empleado_salarioAlto := empleado_altoSalario();
         dbms_output.put_line('Empleado con salario mas alto es: ' ||  empleado_salarioAlto);
end;

--select * from empleados;












