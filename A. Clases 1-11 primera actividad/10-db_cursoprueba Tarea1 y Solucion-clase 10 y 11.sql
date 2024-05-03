set serveroutput on;

DECLARE
--Tarea 1 y Solucion.
NumeroDeCamisetasAVender number := 10;
MontoDeCamiseta number := 65000;
Celular number := 232312;
SubTotalAPagar number := NumeroDeCamisetasAVender * MontoDeCamiseta;
ImpuestoDeVenta number := (SubTotalAPagar * 15) / 100;
TotalAPagar number := SubTotalAPagar + ImpuestoDeVenta;

BEGIN

dbms_output.put_line('Numero de camisetas a vender: ' || NumeroDeCamisetasAVender);
dbms_output.put_line('Valor de camiseta: ' || MontoDeCamiseta);
dbms_output.put_line('Celular: ' || Celular);
dbms_output.put_line('Sub Total a pagar: ' || SubTotalAPagar);
dbms_output.put_line('Impuesto de Venta: ' || ImpuestoDeVenta);
dbms_output.put_line('Total a pagar: ' || TotalAPagar);

END;
