select class.cls_id,cls_name,count(stu_no) as member
from class inner join student
group by class.cls_id,cls_name;
