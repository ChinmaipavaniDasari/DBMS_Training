create database if not exists mydatabase;
use mydatabase;
drop table if exists student;
drop table  student;
create table student (
    rollno int primary key,
    Name varchar(20),
    phoneno int unique,
    marks int check (marks >= 0 and marks <= 100),
    doj date default (CURRENT_DATE)
	-- constraint mk1 primary key(rollno),
    -- constraint mk2 unique(phoneno),
    -- constraint mk3 check(marks >= 0 and marks <=0)
);
select * from student;
-- i)change datatype of rollno from int to varchar(20)
alter table student modify rollno varchar(10);
show create table student;
-- ii)add extra column branch varchar(10)
alter table student add column branch varchar(20);
-- iii)drop column doj column
alter table student drop doj ;
-- iv)increase size of phoneno(i.e from int to bigint )
alter table student modify phoneno bigint;
select * from student;
-- v)remove unique constraint on phoneno
alter table student drop index phoneno;
-- vi) add unique constraint on name column
alter table student add constraint mk5 unique(name);
select * from student;
insert into student values("23951A6733",'Chinmai',null,50,'CSE-DS');
insert into student(rollno,name,marks,branch) values("23951A6734",'pavani',90,'CSE-DS');
insert into student values("23951A675",'thanu',null,80,'CSE-DS'),("23951A6736",'sunitha',null,95,'CSE-DS');

-- update the phoneno
update student set phoneno=986386324 where rollno='23951A6733';
-- update based on name
update student set phoneno=84669923 where name='sunitha';
update student set phoneno=7661842,marks=88 where name='thanu';

