set serveroutput on;
declare
     v_id empleados.id%type;
     v_empleado empleados.nombre%type;
     v_salario empleados.salario%type;
     v_diastrabajados empleados.diastrabajados%type;
     v_salariodiario number(10,2);
     v_salarioapagar number(10,2);
     
     cursor c_empleados is
     select id, nombre, salario, diastrabajados from empleados;
     
       procedure imprimir_empleado(v_id in number, v_empleado in varchar2,  v_salariodiario out number, v_diastrabajados in number, v_salarioapagar out number)
       is
       begin
            v_salariodiario := v_salario / 30;
            v_salarioapagar := v_salariodiario * v_diastrabajados;
          
           dbms_output.put_line('=================================');
           dbms_output.put_line('Id: ' || v_id);
           dbms_output.put_line('Empleado: ' || v_empleado);
           dbms_output.put_line('Salario Diario: ' || v_salariodiario);
           dbms_output.put_line('Dias Trabajados: ' || v_diastrabajados);
           dbms_output.put_line('Salario a pagar: ' || v_salarioapagar);
           dbms_output.put_line('=================================');
       end;
begin
       open c_empleados;
              loop
                 fetch c_empleados into v_id, v_empleado, v_salario, v_diastrabajados;
                 exit when c_empleados%notfound;
                 
                 imprimir_empleado(v_id, v_empleado, v_salariodiario, v_diastrabajados, v_salarioapagar);
                 
              end loop;
            close c_empleados;
end;








