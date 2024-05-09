set serveroutput on;
declare
--Cursores Implicitos
     
begin
      --update empleados set actualizado = sysdate where id > 500;
      --Esto actualiza la tabla empleados la columna actualizado y con el sysdate pone la fecha actual y con el condicional buscara y actualizara toda la tabla donde ID sea mayor a 500. En este caso hay cero actualizados ya que solo hay 10 ID.
     
     update empleados set actualizado = sysdate where ID > 500;
            dbms_output.put_line('Afectados: ' || sql%rowcount);
            --sql%rowcount,  es una variable implícita en PL/SQL que devuelve el número de filas afectadas por la última sentencia SQL que se ejecutó. Después de una sentencia SQL como DELETE, UPDATE o INSERT, esta variable contiene el número de filas afectadas por esa sentencia.

            --commit; 
            --Esto afecta de manera definitiva la base de dato, es decir que update ejecutado modifica la informacion y con el commit se afecta de maneja efectiva la info en la BD.
            
            --rollback; 
            --El comando ROLLBACK en Oracle (y en muchos sistemas de gestión de bases de datos) se utiliza para deshacer las transacciones no confirmadas, es decir, para revertir los cambios realizados desde el último COMMIT o SAVEPOINT.
            --El rollback se utiliza antes de realizar un commit.
            
               if (sql%found) then
               --sql%found Esta condición es una variable implícita en PL/SQL que se utiliza después de ejecutar una sentencia SQL para determinar si la sentencia recuperó al menos una fila de la base de datos. SQL%FOUND devuelve TRUE(Si encontro registro) si la sentencia SQL recuperó al menos una fila, y FALSE(No encontro registro) si no recuperó ninguna fila.
                   dbms_output.put_line('Si Encontro Registros');
              else
                  dbms_output.put_line('No Encontro Registros');
              end if;
end;

--select * from empleados;








