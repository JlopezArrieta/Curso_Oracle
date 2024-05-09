set serveroutput on;
declare
--TIPO DE DATO REGISTRO(RECORD).   
       reg_empleado empleados%rowtype;
begin
       select * into reg_empleado from empleados where id=5;
       dbms_output.put_line(reg_empleado.id);
       dbms_output.put_line(reg_empleado.nombre);
       dbms_output.put_line(reg_empleado.fecha_nacimiento);
       dbms_output.put_line(reg_empleado.salario);
       dbms_output.put_line(reg_empleado.actualizado);

end;

--select * from empleados;







