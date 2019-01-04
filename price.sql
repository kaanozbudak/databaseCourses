CREATE PROCEDURE updatePrice
(IN price int,IN percent int, IN start_date DATE, IN last_date DATE)
begin
  update priceTable set price_column = ((price * percent) + price) 
  where date_time between 'start_date' and 'last_date' 
END //
DELIMITER ;

CALL updatePrice(500, 50, '2010-09-29 00:00:00','2010-09-30 00:00:00')