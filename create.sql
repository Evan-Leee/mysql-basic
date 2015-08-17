CREATE DATABASE TWDemo DEFAULT CHARACTER SET utf8;
USE TWDemo;

CREATE TABLE class(
cls_id INT NOT NULL PRIMARY KEY,
cls_name VARCHAR(20),
cls_member INT
);

CREATE TABLE student(
stu_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
stu_no CHAR(10),
stu_name VARCHAR(20),
gender VARCHAR(6),
cls_id INT,
FOREIGN KEY (cls_id) REFERENCES class(cls_id)
);

CREATE TABLE course(
c_no INT NOT NULL PRIMARY KEY ,
c_name VARCHAR(20),
c_day CHAR(4),
c_time INT ,
credit INT 
);


CREATE TABLE sele_course(
stu_id INT,
c_no INT,
FOREIGN KEY (stu_id) REFERENCES student(stu_id),
FOREIGN KEY (c_no) REFERENCES course(c_no),
FOREIGN KEY (sch_id) REFERENCES schedule(sch_id),
PRIMARY KEY (stu_id,c_no,sch_id)
);

SHOW TABLES;

DESC class;
DESC student;
DESC course;
DESC schedule;
DESC sele_course;
