#task1
drop procedure if exists GetMaxQuantity ;
create procedure GetMaxQuantity () 
select max(Quantity) as 'Max Quantity in order' from orders;
call GetMaxQuantity () ;
#----------------------------------------------------
#task2
PREPARE GetOrderDetail FROM 'select orders.OrderID, orders.Quantity, orders.TotalCost 
from orders inner join bookings on orders.BookingID=bookings.BookingID 
where bookings.CustomerDetailsID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;
#----------------------------------------------------
#task3
drop procedure if exists CancelOrder  ;
delimiter //
create procedure CancelOrder(in order_id INT) 
begin 
delete from  orders where orders.OrderID=order_id;
select concat("Order ",order_id," is cancelled") as Confirmation;
end //
delimiter ;
call CancelOrder (5) ;
