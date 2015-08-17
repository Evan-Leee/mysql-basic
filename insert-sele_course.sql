DELIMITER //
CREATE PROCEDURE dowhile()
 BEGIN
  DECLARE i INT DEFAULT 1;
   WHILE i<=50 DO
     INSERT INTO sele_course VALUES (i,1),(i,2),(i,3),(i,4),(i,5);
    SET i=i+1;
   END WHILE;
 END;
 //

DELIMITER ;

CALL dowhile();

DROP PROCEDURE dowhile;

SELECT * FROM sele_course;
