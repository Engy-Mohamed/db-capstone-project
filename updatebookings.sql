drop procedure if exists AddBooking   ;
delimiter //
create procedure AddBooking (in Booking_id INT ,in booking_date DATE, in table_number INT, in customer_id int) 
begin 
INSERT INTO Bookings (BookingID,BookingDate,TableNumber,CustomerDetailsID,03)
VALUES
(Booking_id, booking_date, table_number, customer_id,staff_id);
select "New booking added" as 'Confirmation';
end //
delimiter ;
call AddBooking (9,'2022-12-30', 4,3) ;
#---------------------------------
# task 2

drop procedure if exists UpdateBooking    ;
delimiter //
create procedure UpdateBooking (in booking_id INT, in booking_date DATE) 
begin 
update Bookings set BookingDate=booking_date
where BookingID=booking_id;
select concat("booking ",booking_id," updated") as 'Confirmation';
end //
delimiter ;
call UpdateBooking (9,'2022-12-17') ;

#---------------------------------
# task 3

drop procedure if exists CancelBooking;
delimiter //
create procedure CancelBooking  (in booking_id INT) 
begin 
delete from  Bookings where BookingID=booking_id;
select concat("booking ",booking_id," cancelled") as 'Confirmation';
end //
delimiter ;
call CancelBooking  (9) ;