-------------Database Creation--------------
create database TQdb

use TQdb

---------CreateTable-----------
create table Student
(
studentid int Identity not null,
studentname varchar(10) not null,
)

select * from Student

-----------insert value------------
insert into Student (studentname) values('Rushi'),
('Amruta'),('sonu'),('Gaurav'),('jay')

----------Delete from student--------
delete from Student where studentid=12
insert into Student (studentname) values ('Sonu')

alter table Student
add constraint pkstudid Primary key (studentid)

--------Manually insert record-------
SET IDENTITY_INSERT Student ON
insert into Student (studentid,studentname) values (3,'Abhishek')

-------creation------
create table BookStore
(
Bookid varchar(10) not null,
Bookname varchar(20) not null,
Studentid int constraint fkstudid Foreign key references Student(studentid),
DateIssue date constraint dfdate Default getdate(), 
)

select * from BookStore

----------Insert record-----------
insert into BookStore(Bookid,Bookname,Studentid) values
('B001','SQL',1)

insert into BookStore values ('B002','Python',3,default)

insert into BookStore values ('B003','Java',4,default)

------------Drop Constraint--------------
alter table BookStore
drop constraint dfdate

----------Drop Column---------------
alter table BookStore
drop column DateIssue


---------------procedure--------------
-- rename database
sp_renamedb 'TQdb','Think'

-------rename column--------
sp_rename 'BookStore.Bookname', 'BookName' , 'column'

sp_help




