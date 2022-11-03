create table student(
stud_id varchar(20) primary key,
stud_name varchar(40),
stud_standard varchar(30),
stud_section varchar(20),
stud_address varchar(40),
stud_fathername varchar(20),
stud_eMail varchar(20),
stud_Classteacher_id varchar(20)
);

insert into student values('aaa','tarun','10th','A','rrrr','ram','aaaaaa','bbbb');
insert into examinationmarks values('aa','aaa','tarun','10th','A','tel','eng','hin',80,85,40,89,90,96,480,80.00,'a+','good');

SELECT stud_name,stud_standard,student_avg_marks,generalscienc100,mathematics100,generalscienc100+mathematics100 as sciencemathstotal
FROM examinationmarks where (student_avg_marks >= 75) and (generalscienc100 and mathematics100 >=75 );