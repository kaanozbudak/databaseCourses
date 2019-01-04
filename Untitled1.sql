DELIMITER //
CREATE PROCEDURE checkName
(IN name CHAR(20))
BEGIN
  SELECT * FROM user_table
  WHERE user_firstname = name;
END //
DELIMITER ;

CALL checkName('kaan');