DELIMITER //

CREATE PROCEDURE FormatSeconds(sec INT)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE seconds INT;
    
    SET days = sec DIV (24 * 3600);
    SET sec = sec MOD (24 * 3600);
    SET hours = sec DIV 3600;
    SET sec = sec MOD 3600;
    SET minutes = sec DIV 60;
    SET seconds = sec MOD 60;
    
    SELECT CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds') AS formatted_time;
END //

DELIMITER ;

CALL FormatSeconds(123456);
