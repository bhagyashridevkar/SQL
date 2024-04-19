create database hospital;
use hospital;

create table patientDetails(
Name char(15),
contactno varchar(10),
address varchar(25),
age int,
Gender char(10)
);

drop table patientDetails;

create table medicalhistory(
PatientIdNo int,
Patientname char(15),
previousrecord varchar(45),
weight int,
height int
);

create table currentinfo(
PatientIdNo int,
Patientname char(15),
Sugarlevel int,
BP int,
NoofBeads int,
BloodGroup char(5)
);

create table medicalequipment(
EquipmentName char(15),
EquipmentId int,
Manufacturer char(15),
Model char(10),
SerialNo int,
Department char(10),
MaintananceDetails varchar(20)
);

create table administration(
date date,
RecordNo int,
Admission int,
Discharge int,
OPD int


create database mechanicalcompany;

use mechanicalcompany;

create table EmployeeDetails (
EmployeeId Int,
EmployeeName char(15),
Designation char(10),
Departent char(10),
DateOfJoining date,
TotalExp int
);

create table CustomerDetails(
CustomerCode char(6),
CustomerName char(20),
Address varchar(25),
ContactNo varchar(10),
Agentcode char(6),
OpeingAmt int,
ReceiveAmt int,
PaymentAmt int
);

create table orders(
OrderNo int,
OrderAmount int,
Advanceamount int,
OrderDate date,
CustomerCode char(6),
Agentcode char(6),
OrderDescription varchar(15)
);
create table Agents (
AgentCode char(6),
AgentName char(15),
WorkingArea char(35),
commission int,
contactno varchar(10),
address varchar(25)
);
use cdaproject1;
insert into stud
values(1,'aaa','Comp','Pune');

insert into stud
values(1,'bbb',3,'Pune');

insert into stud
values(2,'ccc',4,'Sangli');

insert into stud values
(3,'ddd',4,'Miraj'),
(4, 'eee',2,'Pune');

describe stud;

select * from stud;

update stud
set SName='geeta'
where RollNo=2;

update stud
set Scity='nagar'
where RollNo=4;

update stud
set Scity='Mumbai', 
Sname='Rakesh'
where RollNo=4;

delete from stud
where RollNo=4;

alter table stud 
add dept char(10);

describe stud;

alter table stud
drop column dept;

alter table stud
modify SName varchar(50);

alter table stud
rename to student;

describe student;

select * from student;

truncate table student;

select * from sales2014;















