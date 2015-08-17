

DELIMITER //
CREATE PROCEDURE dowhile()
 BEGIN
  DECLARE i INT DEFAULT 1;
   WHILE i<=10 DO
     INSERT INTO student VALUES (NULL,1207100117+i,concat("1班同学",i),i%2,1),
     (NULL,1207100127+i,concat("2班同学",i),i%2,2),
     (NULL,1207100137+i,concat("3班同学",i),i%2,3),
     (NULL,1207100147+i,concat("4班同学",i),i%2,4),
     (NULL,1207100157+i,concat("5班同学",i),i%2,5);
    SET i=i+1;
   END WHILE;
 END;
 //

DELIMITER ;

CALL dowhile();

DROP PROCEDURE dowhile;

SELECT * FROM student;