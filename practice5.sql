use classicmodels;
show tables;
describe customers;  -- customerNumber
describe employees;
describe offices;
describe orderdetails; -- orderNumber productCode
describe orders; -- orderNumer customerNumber  
describe payments; -- customerNumber
describe productlines; -- productLine
describe products; -- productCode

select contactFirstName,contactLastName,amount
from customers as c inner join payments as p
on c.customerNumber=p.customerNumber;

select o.productCode,o.priceEach,o.quantityOrdered,p.MSRP, p.productLine
from products as p inner join orderdetails as o
on p.productCode=o.productCode;

select c.contactLastName,c.contactFirstName,c.country,o.shippedDate, o.orderDate , o.status
from customers as c inner join orders as o
on c.customerNumber=o.customerNumber;


select c.contactFirstName,C.contactLastName,c.country,N2.productLine,N2.MSRP
from customers as c inner join (
select N1.productLine,N1.MSRP,o.customerNumber
from orders as o inner join(
select p.productLine,p.MSRP,od.orderNumber
from products as p inner join orderdetails as od
on p.productCode=od.productCode
) as N1
on o.orderNumber=N1.orderNumber
) as N2
on c.customerNumber=N2.customerNumber;

select c.contactFirstName,C.contactLastName,c.country,N2.productLine,N2.MSRP
from customers as c inner join (
select N1.productLine,N1.MSRP,o.customerNumber
from orders as o inner join(
select p.productLine,p.MSRP,od.orderNumber
from products as p inner join orderdetails as od
on p.productCode=od.productCode
) as N1
on o.orderNumber=N1.orderNumber
) as N2
on c.customerNumber=N2.customerNumber
where productLine='classic cars';

use class6;
select c.F_name,c.I_name,c.age,c.country,o.amount
from customer as c inner join orders as o
on c.customer_id=o.customer_id;

select c.F_name,c.I_name,c.age,c.country,o.amount
from customer as c left join orders as o
on c.customer_id=o.customer_id;

select c.F_name,c.I_name,c.age,c.country,o.amount
from customer as c right join orders as o
on c.customer_id=o.customer_id;


select c.F_name,c.I_name,c.age,c.country,o.amount
from customer as c left join orders as o
on c.customer_id=o.customer_id
union
select c.F_name,c.I_name,c.age,c.country,o.amount
from customer as c right join orders as o
on c.customer_id=o.customer_id;

use sakila;
select * from film;
