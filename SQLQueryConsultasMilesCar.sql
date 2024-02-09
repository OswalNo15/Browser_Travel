
--A. Obtener el número de personas que han consultado itinerarios con un valor mayor a mil dólares.
select count(*) from RESERVATION where amount > 10000
--B. Identificar a las personas mayores de 40 años que viven en la ciudad de Bogotá y han realizado reservas.
select distinct C.ID_CLIENT, FIRST_NAME_CLIENT, SECOND_NAME_CLIENT, FIRST_SURNAME_CLIENT, SECOND_SURNAME_CLIENT, CITY, AGE_CLIENT from RESERVATION R
left join CLIENT C on C.ID_CLIENT = R.ID_CLIENT 
where C.AGE_CLIENT > 40
--C. Listar las reservas que se realizaron con pago mediante tarjeta de crédito.
select * from RESERVATION where PAYMENT_MODE = 'Tarjeta de credito'
--D. Listar las reservas que se hicieron con pago en destino.
select * from RESERVATION where PAYMENT_MODE = 'Pago en destino'
--E. Mostrar las reservas activas y canceladas.
select * from RESERVATION where STATE in ('Cancelada','Activa')