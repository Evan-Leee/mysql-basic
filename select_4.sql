select class.cls_id,cls_name,count(stu_no) as member,
count(if(gender=0,true,null)) as female,
count(if(gender=1,true,null)) as male
from class inner join student group by class.cls_id,cls_name;
