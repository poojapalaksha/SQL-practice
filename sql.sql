create database if not exists college2;

use college2;

create table teacher1 (
eid int,
name1 varchar(20),
subject varchar(20),
salary int
);

insert into teacher1 
 values 
(23,"ajay","math",50000),
(47,"ankitha","english",60000),
(18,"chiru","chemistry",45000),
(9,"Harshitha","physics",75000);

select * from teacher1
where salary>55000;

alter table teacher1
change column salary ctc int;

set sql_safe_updates=0;
update teacher1
set ctc=ctc+ctc*0.25;


select * from teacher1;

alter table teacher1
drop column ctc;

alter table teacher1
add column city varchar(50) default "Sakaleshpur";

create table student(
roll_no int primary key,
name3 varchar(25),
city1 varchar(15),
marks int
);

insert into  student
values
(110,"adam","Delhi",76),
(108,"bob","Mumbai",65),
(124,"scoty","Pune",94),
(112,"arya","Pune",80);

select * from student;

select * from student
where marks>75;

select distinct city1
from student;

select city1
from student 
group by city1;

select city1, max(marks)
from student 
group by city1;

select avg(marks)
from student;

alter table student
add column grade varchar(2);

select * from student;

update student
set grade ="O"
where marks>= 80;

update student
set grade ="A"
where marks>= 70 and marks < 80;

update student
set grade ="B"
where marks>= 60 and marks < 70;

select * from student;
