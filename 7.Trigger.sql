-- Before Insert Trigger for table `customer`
DELIMITER $$
DROP TRIGGER IF EXISTS age_check $$
CREATE OR REPLACE TRIGGER age_check BEFORE INSERT ON customer FOR EACH ROW
BEGIN
DECLARE age INT;
SELECT TIMESTAMPDIFF(YEAR, new.dob, CURDATE()) INTO age FROM DUAL;
    IF (age < 21) THEN
    SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'customer age_check constraint on customer.dob failed';
    END IF;
END$$
DELIMITER ;