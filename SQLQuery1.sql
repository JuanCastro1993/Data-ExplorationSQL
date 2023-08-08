

Select * from LINEAS_PEDIDO

select Idpedido, Sum (PVP*Cantidad) as TOTAL
from LINEAS_PEDIDO
group by idpedido
having IdPedido>1


select * from Cliente
select cif from cliente where cif = 'S1621044E'

select * from cliente where IdCliente> 4 and FechaAlta>GETDATE()