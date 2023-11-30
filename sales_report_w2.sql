# Task 1
drop view if exists OrdersView;
create view OrdersView as select OrderID, Quantity, TotalCost 
from Orders
where Quantity > 2;

select * from OrdersView;
#-------------------------------------------------------------
# Task2
select customerdetails.CustomerDetailsID, customerdetails.FullName,
       orders.OrderID, orders.TotalCost, menus.Name as MenuName, 
       max(case when menuitems.Type = 'Main Courses' then menuitems.Name else null end )as CourseName,
       max(case when menuitems.Type = 'Starters' then menuitems.Name else null end) as StarterName
from orders inner join menus on orders.MenuID = menus.MenuID inner join menuitems 
	 on menus.MenuID = menuitems.MenuID inner join Bookings on orders.BookingID = bookings.BookingID
     inner join customerdetails on bookings.CustomerDetailsID =  customerdetails.CustomerDetailsID
where orders.TotalCost > 150 group by customerdetails.CustomerDetailsID, customerdetails.FullName,
 orders.OrderID, orders.TotalCost,MenuName;
 #------------------------------------------------------
 # task3
 select menus.name
 from menus 
 where menus.MenuID in
 (select menuID from orders where Quantity > 2)

