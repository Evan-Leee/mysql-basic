

DELIMITER //
CREATE PROCEDURE dowhile()
 BEGIN
  DECLARE i INT DEFAULT 1;
   WHILE i<=50 DO
     INSERT INTO student VALUES (NULL,1207100117+i,concat("同学",i),i%2,i%5+1);
    SET i=i+1;
   END WHILE;
 END;
 //

DELIMITER ;

CALL dowhile();

DROP PROCEDURE dowhile;

SELECT * FROM student;
