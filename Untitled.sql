# write a stored procedure to increase the prices of services(in Patient_service table) taken by patienets of given social security unit at the 
# rate of given percentage between given two dates 
DELIMITER //
CREATE PROCEDURE checkName
(IN name CHAR(20))
BEGIN
  SELECT * FROM user_table
  WHERE user_firstname = name;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE updateName
(IN name CHAR(20),IN lastname CHAR(20))
BEGIN
  update user_table set user_lastname = lastname
  where user_firstname = name;
END //
DELIMITER ;


CALL checkName('kaan');
CALL updateName('kaan', 'oz');
