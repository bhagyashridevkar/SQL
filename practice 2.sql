
use employee1;
create table Emp (Eid int, Ename varchar(20), Designation varchar(20), ManagerID varchar(4), Salary int, Incentive int, Email varchar(20));

insert into Emp values (1001, 'Ramesh', 'VicePresident', 0001, 100000, 0, 'rdarade@gmail.com');

insert into Emp values (1002, 'Vaishnavi', 'Manager', 1001, 70000, 5000, 'vgujar@gmail.com'),
(1003, 'Umesh', 'Accountant', 1002, 50000, 0, 'ududam@gmail.com'),
(1004, 'Kaustubh', 'Manager', 1001, 200000, 10000, 'kkumar@gmail.com');

insert into Emp values (1002, 'Vaishnavi', 'Manager', 1001, 70000, 5000, 'vgujar@gmail.com'),
(1003, 'Umesh', 'Accountant', 1002, 50000, 0, 'ududam@gmail.com'),
(1004, 'Kaustubh', 'Manager', 1001, 200000, 10000, 'kkumar@gmail.com');
insert into Emp values (1005, 'Pragati', 'Associate', 1004, 25000, 15000, 'p@gmail.com'),
(1006, 'Bhagyashri', 'Accountant', 1002, 50000, 0, 'b@gmail.com'),
(1007, 'Ajay', 'teamLead', 1002, 30000, 5000, 'aa@gmail.com');
select * from Emp;

alter table Emp 
add column JoiningDate date;

update Emp 
set JoiningDate= 20-04-02
where Eid= 1;

update Emp 
set JoiningDate= '2021-05-02'
where Eid= 1002;

update Emp 
set JoiningDate= '2000-06-17'
where Eid= 1002;

update Emp 
set JoiningDate= '2009-10-17'
where Eid= 1003;

update Emp 
set JoiningDate= '2010-08-23'
where Eid= 1004;

update Emp 
set JoiningDate= '2005-03-27'
where Eid= 1005;

update Emp 
set JoiningDate= '2012-05-20'
where Eid= 1006;

update Emp 
set JoiningDate= '2007-08-24'
where Eid= 1007;

insert into Emp values (01, 'Kajol', 'Precident', null, 200000, null, 'kp@gmail.com', '1998-05-02');


select * from Emp; 


select Eid,Ename,Designation
from Emp 
where Managerid='1002';

select Eid,Ename,Designation
from Emp 
where incentive='0';


select Eid,Ename,Designation
from Emp 
where Salary <100000 and designation = 'Manager';






  





