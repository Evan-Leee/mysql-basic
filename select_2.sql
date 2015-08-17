select stu_no,stu_name,c_name,c_day,c_time,credit
from student s,course c,sele_course sc
where s.stu_id=sc.stu_id
and sc.c_no=c.c_no
order by stu_no;
