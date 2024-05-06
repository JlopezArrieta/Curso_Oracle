--===Funciones dentro de Un Bloque De PL/SQL===--
/*
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
*/

--===Funcion dentro de Un Bloque De PL/SQL===--
/*
set serveroutput on;

declare
      type EmpleadoInfo is record(
           nombre_salarioMasAlto varchar2(50),
           nombre_salarioMasBajo varchar2(50)
      );
      
    --===Empleados con salario Alto y Bajo===--
      function obtener_empleados_extremos
           return varchar2
      is
           informacion EmpleadoInfo;
      begin
          select max(nombre) into informacion.nombre_salarioMasAlto from empleados where salario = (select max(salario) from empleados);
          select min(nombre) into informacion.nombre_salarioMasBajo from empleados where salario = (select min(salario) from empleados);
          return  informacion.nombre_salarioMasAlto || ' - ' || informacion.nombre_salarioMasBajo;
      end;
    --===Fin Empleados con salario Alto y Bajo===--
begin
    dbms_output.put_line('Empleados con salario mas alto y mas bajo: ');
    dbms_output.put_line(obtener_empleados_extremos());  
end; --===PLs Principal===--
*/

--===Funciones dentro de Un Bloque De PL/SQL===--
/*
set serveroutput on;

declare
      salarioPromedio number := 0;
      nombres_empleados varchar2(200) := ' ';
      
      --===Promedio de Salario===
      function salario_promedio
          return number
     is
          promedio number;
     begin
          select avg(salario) into promedio from empleados;
          return promedio;
     end;
    --===Fin promedio de salario=== 
    
    --===empleado_salarioAlto y empleado_salarioBajo===
     function empleados_salarios
         return varchar2
     is
         nombreEmpleadoSalarioAlto varchar2(30) := ' ';
         nombreEmpleadoSalarioBajo varchar2(30) := ' ';
     begin
         select nombre into nombreEmpleadoSalarioAlto from empleados where salario = (select max(salario) from empleados);
         select nombre into nombreEmpleadoSalarioBajo from empleados where salario = (select min(salario) from empleados);
         return 'Empleado con salario Alto es: ' || nombreEmpleadoSalarioAlto || ' y ' ||  'Empleado con salario Bajo es: ' || nombreEmpleadoSalarioBajo;
     end; 
    --===Empleado con salario alto y bajo===
begin --===PLs Principal
     salarioPromedio := salario_promedio();
     dbms_output.put_line('El Salario Promedio Es: ' || salarioPromedio);
     
     nombres_empleados := empleados_salarios(); 
     dbms_output.put_line(nombres_empleados);
end;
*/

--===Funcion dentro de Un Bloque De PL/SQL===--
set serveroutput on;

declare
       empleadoSalarioAlto varchar2(200) := ' ';
       
    --===function de empleado con salario alto===--
       function empleado_alto_salario
            return varchar2
       is
            empleado_SalarioAlto varchar2(500) := ' ';     
            salarioAlto number := 0;
       begin 
             select nombre into empleado_SalarioAlto from empleados where salario = (select max(salario) from empleados);
             select salario into salarioAlto from empleados where salario = (select max(salario) from empleados);
             return 'El Empleado con salario alto es: ' || empleado_SalarioAlto || ' = ' || salarioAlto;
       end;
     --===Fin de Salario Alto===--  
begin
      empleadoSalarioAlto := empleado_alto_salario();
      dbms_output.put_line(empleadoSalarioAlto);
end; --===PLs Principal===--







