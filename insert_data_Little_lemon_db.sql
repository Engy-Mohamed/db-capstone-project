
use littlelemondb;
/*#*******************************************************#
# Insert query to populate "Menu" table:
#*******************************************************#
*/
delete from Orders where OrderID < 6;
delete from Bookings where BookingID < 7;
delete from MenuItems where ItemID < 19;
delete from Menus where MenuID < 6;
INSERT INTO Menus (MenuID,Name,Cuisine)
VALUES
(1,'Moussaka','Greek'),
(2,'Aperitivo','Italian'),
(3,'Manti','Turkish'),
(4,'Koshari','Egyptian'),
(5,'Moussaka','Catalan');


/*#*******************************************************#
# Insert query to populate "MenuItems" table:
#*******************************************************#*/

INSERT INTO MenuItems (ItemID, Name, Type, Price,MenuID)
VALUES
(1, 'Olives','Starters',5, 1),
(2, 'Flatbread','Starters', 5,4),
(3, 'Minestrone', 'Starters', 8,2),
(4, 'Tomato bread','Starters', 8, 5),
(5, 'Falafel', 'Starters', 7, 3),
(6, 'Hummus', 'Starters', 5, 5),
(7, 'Greek salad', 'Main Courses', 15, 1),
(8, 'Bean soup', 'Main Courses', 12, 4),
(9, 'Pizza', 'Main Courses', 15, 2),
(10, 'Greek yoghurt','Desserts', 7, 1),
(11, 'Ice cream', 'Desserts', 6, 3),
(12, 'Cheesecake', 'Desserts', 4, 2),
(13, 'Athens White wine', 'Drinks', 25, 1),
(14, 'Corfu Red Wine', 'Drinks', 30, 5),
(15, 'Turkish Coffee', 'Drinks', 10, 3),
(16, 'Kabasa', 'Main Courses', 17, 3),
(17, 'Basbosa', 'Desserts', 6, 4),
(18, 'Egyptian Tea', 'Drinks', 9, 4);

#*******************************************************#
# Insert query to populate "CustomerDetails" table:
#*******************************************************#
delete from CustomerDetails where CustomerDetailsID < 7;
INSERT INTO CustomerDetails (CustomerDetailsID,FullName)
VALUES
(1, 'Vanessa McCarthy' ),
(2, 'Marcos Romero' ),
(3,'Anna Iversen'),
(4, 'Joakim Iversen' ),
(5,  'Hiroki Yamane' ),
(6, 'Diana Pinto');

#*******************************************************#
# Insert query to populate "staffinformation" table:
#*******************************************************#
delete from staffinformation where StaffID < 07;
INSERT INTO staffinformation (StaffID, FullName, Role,Salary)
VALUES
(01,'Mario Gollini','Manager',70000),
(02,'Adrian Gollini','Assistant Manager',65000),
(03,'Giorgos Dioudis','Head Chef',50000),
(04,'Fatma Kaya','Assistant Chef',45000),
(05,'Elena Salvai','Head Waiter',40000),
(06,'John Millar','Receptionist',35000);

#*******************************************************#
# Insert query to populate "Bookings" table:
#*******************************************************#

INSERT INTO Bookings (BookingID,BookingDate,TableNumber,CustomerDetailsID,BookingTime,StaffID)
VALUES
(1, '2022-10-10', 5, 1,'19:00:00',01),
(2, '2022-11-12',3, 3, '19:00:00', 01),
(3, '2022-10-11',2, 2, '15:00:00', 03),
(4, '2022-10-13',2, 1, '17:30:00', 04),
(5, '2023-11-29',5, 5, '18:30:00', 02),
(6, '2023-11-29',8, 6, '20:00:00', 05);

#*******************************************************#
# Insert query to populate "Orders" table:
#*******************************************************#

INSERT INTO Orders (OrderID, TableNumber, MenuID, BookingID, Quantity, TotalCost)
VALUES
(1, 12, 1, 1, 5, 250),
(2, 19, 2, 2, 3, 200),
(3, 15, 2, 3, 2, 150),
(4, 5, 3, 4, 1, 40),
(5, 8, 1, 5, 1, 110);



