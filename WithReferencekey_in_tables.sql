-- with foreign_key
drop table student;
drop table branch_info;

create table branch_info(id int primary key,branch varchar(10));

create table student(rollno int primary key,name varchar(10),branchid int,

foreign key(branchid) references branch_info(id));

insert into branch_info values(1,'cse');
insert into branch_info values(2,'it');
insert into branch_info values(3,'ds');
insert into branch_info values(4,null);
select * from branch_info;

insert into  student values(701,'pavani',1);
insert into  student values(702,'sindu',2);
insert into  student values(703,'panu',3);
insert into  student values(704,'pallu',4);
insert into  student values(705,'neela',63); -- invalid data
select * from  student;
