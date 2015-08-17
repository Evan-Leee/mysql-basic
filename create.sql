CREATE DATABASE IF NOT EXISTS TWDemo DEFAULT CHARACTER SET utf8;
USE TWDemo;

CREATE TABLE IF NOT EXISTS class(
cls_id INT NOT NULL PRIMARY KEY,
cls_name VARCHAR(20),
cls_member INT
);

CREATE TABLE IF NOT EXISTS student(
stu_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
stu_no CHAR(10),
stu_name VARCHAR(20),
gender VARCHAR(6),
cls_id INT,
FOREIGN KEY (cls_id) REFERENCES class(cls_id)
);

CREATE TABLE IF NOT EXISTS course(
c_no INT NOT NULL PRIMARY KEY ,
c_name VARCHAR(20),
c_day CHAR(4),
c_time CHAR(10),
credit INT
);

CREATE TABLE IF NOT EXISTS sele_course(
stu_id INT,
c_no INT,
FOREIGN KEY (stu_id) REFERENCES student(stu_id),
FOREIGN KEY (c_no) REFERENCES course(c_no),
PRIMARY KEY (stu_id,c_no)
);

CREATE VIEW schedule AS
select stu_no,stu_name,c_name,c_day,c_time,credit
from student s,course c,sele_course sc
where s.stu_id=sc.stu_id
and sc.c_no=c.c_no
order by stu_no;

SHOW TABLES;

DESC class;
DESC student;
DESC course;
DESC sele_course;
