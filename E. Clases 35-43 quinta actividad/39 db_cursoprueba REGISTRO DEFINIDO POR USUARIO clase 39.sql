set serveroutput on;
declare
--REGISTRO DEFINIDO POR USUARIO.   
       --==DEFINICION DE REGISTRO==--
          type carro is record (
            marca varchar2(100),
            modelo varchar2(100),
            puertas number
          );
          --Definicion de variables de tipo carro.
          mazda carro;
          toyota carro;
begin
         mazda.marca := 'Mazda';
         mazda.modelo := 'Mazda 3';
         mazda.puertas := 4;
     
         toyota.marca := 'Toyota';
         toyota.modelo := 'Prado';
         toyota.puertas := 5;
         
         dbms_output.put_line('Marca: ' || mazda.marca || ' - Modelo: ' || mazda.modelo || ' - Puertas: ' || mazda.puertas);
         dbms_output.put_line('Marca: ' || toyota.marca || ' - Modelo: ' || toyota.modelo || ' - Puertas: ' || toyota.puertas);
end;









