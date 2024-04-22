select country, sum(creditlimit) as totalCL ,
max(creditlimit) as maxCL,
min(creditlimit) as minCL,
avg(creditlimit) as avrgCL,
count(creditlimit)
from customers
group by country;

select country, max(creditlimit) as maxCL
from customers
group by country
having maxCL>100000
order by maxCL desc;  -- having is used when we made groups .we replace where by having funtion. 

select * from products;

select productLine,
 min(quantityInStock) as minquantityInStock,
max(quantityInStock) as maxquantityInStock,
avg(quantityInStock) as avgquantityInStock
from products
group by productLine;

select productLine,
 min(MSRP) as minMSRP,
max(MSRP) as maxMSRP,
avg(MSRP) as avgMSRP
from products
group by productLine;

select productLine,
 min(buyPrice) as minbuyPrice,
max(buyPrice) as maxbuyPrice,
avg(buyPrice) as avgbuyPrice
from products
group by productLine;

select productLine,
 min(buyPrice) as minbuyPrice,
max(buyPrice) as maxbuyPrice,
avg(buyPrice) as avgbuyPrice,
sum(buyPrice) as sumbuyPrice
from products
group by productLine
having sumbuyPrice>64;

select productLine,
 min(buyPrice) as minbuyPrice,
max(buyPrice) as maxbuyPrice,
avg(buyPrice) as avgbuyPrice,
sum(buyPrice) as sumbuyPrice
from products
group by productLine
order by maxbuyPrice desc
limit 5;

select * from customers;


select contactFirstName,creditLimit
from customers
where creditLimit > (select avg(creditLimit) from customers);
-- this is called subquery

select contactFirstName,customerName,creditLimit
from customers
where creditLimit = (select max(creditLimit) from customers);

select contactFirstName,customerName,creditLimit
from customers
where creditLimit <(select max(creditLimit) from customers)
order by creditLimit desc
limit 1;

select contactFirstName,creditlimit
from customers
where creditLimit=(select max(creditlimit) from customers
where creditlimit<
(select max(creditlimit) from customers));
 
select contactFirstName,creditlimit
from customers
where creditLimit=(select max(creditlimit) from customers
where creditlimit<(select max(creditlimit) from customers
where creditLimit=(select max(creditlimit) from customers)))
;

select contactFirstName,customerName,creditLimit
from customers
limit 10;

select contactFirstName,customerName,creditLimit
from customers
order by creditlimit desc
limit 2,1; -- this shows 6th values from creditLimit
use classicmodels;

select contactFirstName,creditlimit
from customers
where creditLimit=(select max(creditlimit) from customers
where creditlimit<(select max(creditlimit) from customers
where creditLimit<(select max(creditlimit) from customers)))
;

 











