DELIMITER //

CREATE FUNCTION GetNumbers(lim INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE numbers VARCHAR(50);
    DECLARE x INT;

    SET numbers = '';
    SET x = 2;

    WHILE x <= lim DO
        SET numbers = CONCAT(numbers, x, ',');
        SET x = x + 2;
    END WHILE;

    RETURN SUBSTRING(numbers, 1, CHAR_LENGTH(numbers) - 1);
END //

DELIMITER ;

SELECT GetNumbers(10);