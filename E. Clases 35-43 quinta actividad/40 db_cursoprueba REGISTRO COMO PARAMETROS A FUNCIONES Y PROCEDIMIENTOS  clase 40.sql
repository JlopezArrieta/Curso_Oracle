set serveroutput on;
declare
--REGISTRO COMO PARAMETROS A FUNCIONES Y PROCEDIMIENTOS.   
       --==DEFINICION DE REGISTRO==--
          type carro is record (
            marca varchar2(100),
            modelo varchar2(100),
            puertas number
          );
          --Definicion de variables de tipo carro.
          mazda carro;
          toyota carro;
          
         --Procedimiento de impresion.
            procedure imprimir_carro(car carro) --car = nombre de la variable y carro es el tipo de variable que es car.
            is
            begin
                dbms_output.put_line('Marca: ' || car.marca || ' - Modelo: ' || car.modelo || ' - Puertas: ' || car.puertas);
            end;
         --Fin de procedimiento de impresion. 
begin
         mazda.marca := 'Mazda';
         mazda.modelo := 'Mazda 3';
         mazda.puertas := 4;
     
         toyota.marca := 'Toyota';
         toyota.modelo := 'Prado';
         toyota.puertas := 4;
         
         imprimir_carro(mazda);
         imprimir_carro(toyota);
end;








